#' @title draw_step_tree
#' @description Drawing of metabolic process matrix diagram and phylogenetic tree diagram
#' @param infomatrix Matrix generated using the words2steps function
#' @param Matrix The matrix about the steps or transformation or the databases and tools of the metabolic reconstruction.
#' @param stepTypes Grouping information for metabolic processes
#' @param contentTypes Grouping information for metabolic content
#' @return a plot
#' @import dplyr
#' @import ggplot2
#' @import ggtree
#' @import patchwork
#' @import SnowballC
#' @importFrom ape as.phylo
#' @importFrom stats hclust dist na.omit
#' @importFrom grDevices colorRampPalette
#' @importFrom RColorBrewer brewer.pal
#' @importFrom rlang .data
#' @importFrom plyr rbind.fill
#' @export
#' @examples
#' \donttest{p1 <- draw_step_tree(matrixProcess, stepsMatrix, stepTypes, contentTypes)}

  draw_step_tree <- function(infomatrix, Matrix, stepTypes, contentTypes){

        steps <- 1:93
        infomatrix <- cbind(steps,infomatrix)

        Matrix[is.na(Matrix)] <- 0
        Matrix <- data.frame(Matrix)
        # Draw the evolutionary tree of metabolic processes

        rownames(Matrix) <- Matrix$Steps
        data <- Matrix[,-c(1:4)]

        # Calculate the evolutionary tree distance
        tree <- hclust(dist(data))
        # Convert to the phylo object
        tree <- ape::as.phylo(tree)

        # Group information of metabolic processes

        stepTypes <- data.frame(stepTypes)

        info <- data.frame(label = rownames(data),
                           group = stepTypes$group[match(rownames(data), stepTypes$label)])

        # Integrate the group information
        tree <- full_join(tree, info , by='label')
        # Color
        col <- colorRampPalette(brewer.pal(12,'Paired'))(13)

        p2 <- ggtree(tree)+
                # Draw evolutionary tree lines with colors sorted by group information
                geom_tree(aes(color = .data$group), size = 1)+
                # Evolutionary tree with the opening facing down
                layout_dendrogram()+
                # Set the color information and remove the NA in the legend
                scale_color_manual(values = col[1:8],
                                   na.translate=FALSE)+
                # Modify the title of the legend
                labs(colour = 'Group of steps')+
                # Adjust the thickness of the legend lines
                guides(colour = guide_legend(override.aes = list(size=2)))

        # Extract the information about the top and bottom positions of metabolic processes when the p2 evolutionary tree is drawn,
        # which is used to adjust the relative positions of the columns of the matrix

        p2$data <- data.frame(p2$data)
        roworder <- rownames(p2$data[!is.na(p2$data$label),])

        # Draw the evolutionary tree of metabolic content

        # Remove the frequency information
        data <- t(Matrix[,-c(1:4)])

        # Calculate the evolutionary tree distance
        tree1 <- hclust(dist(data))
        # Convert to the phylo object
        tree1 <- ape::as.phylo(tree1)

        # The group information of metabolic contents

        contentTypes <- data.frame(contentTypes)

        info <- data.frame(label = rownames(data), group = contentTypes$group[match(rownames(data), contentTypes$label)])
        # Integrate the group information
        tree1 <- full_join(tree1, info , by='label')

        p3 <- ggtree(tree1)+
                geom_tree(aes(color = .data$group), size = 1)+
                # The legend position is set to below and placed vertically
                theme(legend.position = "bottom", legend.direction = "vertical")+
                scale_color_manual(values = col[9:13],
                                   na.translate=FALSE)+
                labs(colour = 'Group of contents')+
                guides(colour = guide_legend(override.aes = list(size=2)))

        # Extract the information about the top and bottom positions of the metabolic content when the p3 evolutionary tree is drawn,
        # which is used to adjust the relative positions of the rows of the matrix
        p3$data <- data.frame(p3$data)
        colorder <- p3$data$label[order(p3$data$y)] %>% na.omit() %>% as.character()

        # Since the matrix is plotted with the y-axis flipped,
        # the position information of the metabolic content here must also be flipped
        colorder <- c('degree', rev(colorder))

        infomatrix_2 <- infomatrix[which(infomatrix$steps %in% roworder),colorder]

        # Matrix plotting

        # Data Organization
        stoi <- infomatrix_2[,!colnames(infomatrix_2) %in% 'degree'] %>% t()
        stoi <- as.data.frame(stoi)

        # Extract non-zero location and number information

        coefficientPosi_1 <- which(stoi == -1,arr.ind = T)%>%data.frame()
        coefficientPosi_1$num <- -1

        coefficientPosi_2 <- which(stoi == -1,arr.ind = T)%>%data.frame()
        coefficientPosi_2$num <- 1

        coefficientPosi <- rbind(coefficientPosi_1, coefficientPosi_2)

        # Find the line with output
        f <- c()
        for (i in 1:nrow(stoi)) {
                if(length(which(stoi[i,] >0)))
                        f = c(f, i)
        }

        dim <- dim(stoi)
        # Draw the connected line
        # Row loop, drawing a line for each row
        d <- data.frame()
        for (i in f) {
                a <-  which(stoi[i,] != 0)# Extract the position of each row with non-zero stoichiometric coefficients
                # After extracting the position information of each line, then add a line of NA,
                # which means to interrupt the line between the previous line and the next line
                a <- data.frame(row_x_1 = c(a, NA), col_y_1 = c(rep(i, length(a)), NA))
                d <- rbind(d,a)
        }
        rownames(d) <- 1:nrow(d)

        # Draw the connection line of the column
        # Column loop, drawing a line for each column
        e <- data.frame()
        for (i in 1:dim[2]) {
                a = which(stoi[,i] != 0)# Extract the position of each column with non-zero stoichiometric coefficients
                # After extracting the position information of each row, then add a line of NA,
                # the meaning is to interrupt the line between the previous column and the next column
                a = data.frame(row_x_2 = c(rep(i, length(a)),NA), col_y_2 = c(a, NA), degree = c(rep(infomatrix[i,1], length(a)),NA))
                e = rbind(e,a)
        }
        rownames(e) <- 1:nrow(e)

        # Judgment of arrows in each line
        # Create an empty data data frame to store the arrow coordinates in each row
        arrow_row <- data.frame()
        # Arrows
        # Positive stoichiometric coefficients point to negative stoichiometric coefficients in the rows
        for (i in 1:dim[1]) {
                # Judge information on the location of the stoichiometric coefficient less than zero in the row
                posi <- which(stoi[i,] < 0)
                if(length(posi) > 0){# Determine if there are rows less than zero
                        for (ii in posi) {# All negative coefficients in the row participate in the loop,
                                          # drawing an arrow pointing to it
                                if(max(stoi[i,1:(ii-1)]) > 0){# Determine if there is the coefficient greater than zero to the left of the negative coefficient
                                        arrow_row <- rbind(arrow_row, c(c(ii-0.35, i, ii-0.1, i)))# Combine arrow position information in the rows
                                        if(ii != ncol(stoi)){# When the position of the negative coefficient is not on the far right
                                                if(max(stoi[i,(ii+1):ncol(stoi)]) > 0){# Determine if there is the coefficient greater than zero to the right of the negative coefficient
                                                        arrow_row <- rbind(arrow_row, c(ii+0.35, i, ii+0.1, i))# Combine arrow position information in the rows
                                                }
                                        }
                                } else {# Determine if there is the coefficient greater than zero to the right of the negative coefficient
                                        if(ii != ncol(stoi)){# When the position of the negative coefficient is not on the far right
                                                if(max(stoi[i,(ii+1):ncol(stoi)]) > 0){
                                                        arrow_row <- rbind(arrow_row, c(ii+0.35, i, ii+0.1, i))# Combine arrow position information in the rows
                                                }
                                        }
                                }
                        }
                } else {
                        next
                }

        }

        if(all(dim(arrow_row))){
                # Change column names of data frame
                colnames(arrow_row) <- c('x1', 'y1', 'xend1', 'yend1')
                rownames(arrow_row) <- 1:nrow(arrow_row)
        } else {
                arrow_row <- data.frame(NA, NA, NA, NA)
                colnames(arrow_row) <- c('x1', 'y1', 'xend1', 'yend1')
                rownames(arrow_row) <- 1:nrow(arrow_row)
        }

        # Judgment of arrows in each column
        # Create an empty data frame to store the arrow coordinates in each column
        arrow_col <- data.frame()
        # Negative stoichiometric coefficients point to positive stoichiometric coefficients in the column
        for (i in 1:dim[2]) {
                posi <- which(stoi[,i] > 0)
                if(length(posi) > 0){
                        for (ii in posi) {
                                if(min(stoi[1:(ii-1), i]) < 0){
                                        arrow_col <- rbind(arrow_col, c(c(i, ii-0.5, i, ii-0.25)))
                                        if(ii != nrow(stoi)){
                                                if(min(stoi[(ii+1):nrow(stoi), i]) < 0){
                                                        arrow_col <- rbind(arrow_col, c(c(i, ii+0.5, i, ii+0.25)))
                                                }
                                        }
                                } else {
                                        if(ii != nrow(stoi)){
                                                if(min(stoi[(ii+1):nrow(stoi), i]) < 0){
                                                        arrow_col <- rbind(arrow_col, c(c(i, ii+0.5, i, ii+0.25)))
                                                }
                                        }
                                }
                        }
                } else {
                        next
                }
        }

        if(all(dim(arrow_col))){
                # Change column names of data frame
                colnames(arrow_col) <- c('x2', 'y2', 'xend2', 'yend2')
                rownames(arrow_col) <- 1:nrow(arrow_col)
        } else {
                arrow_col = data.frame(NA, NA, NA, NA)
                colnames(arrow_col) <- c('x2', 'y2', 'xend2', 'yend2')
                rownames(arrow_col) <- 1:nrow(arrow_col)
        }

        # Because the number of rows in each matrix is not the same and column merging with cbind will report an error, the rbind.fill function is used
        pwdata <- data.frame(t(plyr::rbind.fill(as.data.frame(t(coefficientPosi)), as.data.frame(t(d)),
                                               as.data.frame(t(e)), as.data.frame(t(arrow_row)),as.data.frame(t(arrow_col)))))
        colnames(pwdata) <- c('row_x', 'col_y', 'text', 'row_x_1', 'col_y_1', 'row_x_2', 'col_y_2', 'degree',
                             'x1', 'y1', 'xend1', 'yend1', 'x2', 'y2', 'xend2', 'yend2')
        # Append information metabolite name and chemical reaction name, and add NA according to pwdata row number
        pwdata <- cbind(pwdata, colname = c(colnames(stoi), rep(NA, (nrow(pwdata)-dim[2]))),
                       rowname = c(str_replace_all(rownames(stoi), '\\.', ' '), rep(NA, (nrow(pwdata)-dim[1]))))
        pwdata$row_x_2[(nrow(pwdata)-3):nrow(pwdata)] <- c(1,1,93,93)
        pwdata$col_y_2[(nrow(pwdata)-3):nrow(pwdata)] <- c(1,66,1,66)
        #The maximum degree is 30
        pwdata$degree[nrow(pwdata)] <- 30

        p1 <- ggplot(data = pwdata, aes(colour = .data$degree)) +
                # Change y-axis scale label to metabolite name
                scale_y_reverse(name = 'Contents', breaks = seq(1, dim[1], 1), expand = c(0.01,0.01),
                                labels = pwdata$rowname[!is.na(pwdata$rowname)], position = 'right') +
                # The x-axis is set at the top, and the x-axis scale label is changed to the reaction name.
                scale_x_continuous(name = 'Steps', breaks = seq(1, dim[2], 1), expand = c(0.008,0.008),
                                   labels = pwdata$colname[!is.na(pwdata$colname)]) +
                # Draw the connecting lines for each row
                geom_path(aes(x = .data$row_x_1, y = .data$col_y_1), na.rm = T, size = 0.25) +
                # Draw the connecting lines for each column
                geom_path(aes(x = .data$row_x_2, y = .data$col_y_2, colour = .data$degree), na.rm = T, size = (pwdata$degree)/4, show.legend = T) +
                # Change axis label format, rotation, color, font, etc.
                theme(axis.text.x = element_text(colour = "grey20", size = 10, angle = 90, hjust = 1, vjust = 0, face = "plain"),
                      axis.text.y = element_text(colour = "grey20", size = 10, angle = 0, hjust = 1, vjust = 0, face = "plain"))+
                # Draw the arrows for each row
                geom_segment(aes(x = .data$x1, y = .data$y1,xend = .data$xend1, yend = .data$yend1),
                             arrow = arrow(length = unit(0.2, "cm"), angle = 20), colour = "red", lwd = 0.5, na.rm = T) +
                # Draw the arrows for each column
                geom_segment(aes(x = .data$x2, y = .data$y2,xend = .data$xend2, yend = .data$yend2),
                             arrow = arrow(length = unit(0.2, "cm"), angle = 20), colour = "red", lwd = 0.5, na.rm = T) +
                # To ensure that there is no overlap between the straight lines and the text of the measurement coefficients,
                # an alternative approach is to add white labels at the corresponding positions
                geom_point(data = filter(pwdata, .data$text == -1), aes(x = .data$col_y, y = .data$row_x), size = 3, color = "#8ecfc9", na.rm = T)+
                geom_point(data = filter(pwdata, .data$text == 1), aes(x = .data$col_y, y = .data$row_x), size = 3, color = "#FA7F6F", na.rm = T)+
                # It should be noted that the parameter values of scale_color_gradientn is according to the scale, not the actual value,
                # for the actual range of the graph degree of archaea is 0-7
                # To ensure that the gradient colors of archaea, bacteria and eukaryotes are comparable,
                # we need to set a false degree: 30 for archaea, which is the value given by the code in line 211
                scale_color_gradientn(values = seq(0,1,0.1),
                                      colours = colorRampPalette(c("#8ecfc9", '#82B0D2', '#BEB8DC', '#FFBE7A', "#FA7F6F"))(10))+
                # Remove the subgrid lines
                theme(panel.grid.minor = element_blank())

        # Layout format between the three figures
        design <- "#A
                   BC"
        p <- wrap_plots(A = p2, B = p3, C = p1,
                       design = design)+
                # Legend integrated into one piece
                plot_layout(guides = 'collect')+
                #  B and C, A and C graphics ratio set to 1:3
                plot_layout(widths = c(1, 3))+
                plot_layout(heights = c(1, 3))


        return(p)
}
