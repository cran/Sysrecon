#' @title draw_conversion_tree
#' @description Drawing of metabolic process matrix diagram and phylogenetic tree diagram
#' @param infomatrix Matrix generated using the words2steps function
#' @param Matrix The matrix about the step or transformation or databases and tools used in the metabolic reconstruction
#' @param stepTypes Grouping information for reconstruction processes
#' @param conversionTypes Grouping information for conversion content
#' @return a plot
#' @import ggtree
#' @import tidyverse
#' @import ggplot2
#' @import dplyr
#' @import SnowballC
#' @import patchwork
#' @importFrom ape as.phylo
#' @importFrom stats hclust dist na.omit
#' @importFrom grDevices colorRampPalette
#' @importFrom RColorBrewer brewer.pal
#' @importFrom rlang .data
#' @export
#' @examples
#' \donttest{p1 <- draw_conversion_tree(matrixProcessConversion, conversionMatrix,
#'    stepTypes, conversionTypes)}

 draw_conversion_tree <- function(infomatrix, Matrix, stepTypes, conversionTypes){

  steps <- 1:93
  infomatrix <- cbind(steps,infomatrix)

  Matrix[is.na(Matrix)] <-  0
  Matrix <- data.frame(Matrix)
  # Draw the evolutionary tree of metabolic processes
  rownames(Matrix) <- Matrix$Steps
  data <- Matrix[,-c(1:4)]

  # Calculate the evolutionary tree distance
  tree <- hclust(dist(data))
  # Convert to the phylo object
  tree <- as.phylo(tree)

  # Grouping information of metabolic processes
  info <- data.frame(label = rownames(data), group = stepTypes$group[match(rownames(data), stepTypes$label)])
  # Integrate Group Information
  tree <- full_join(tree, info , by='label')
  # Color
  col <- colorRampPalette(brewer.pal(12,'Paired'))(14)

  p2 <- ggtree(tree)+
    # Draw evolutionary tree lines, and the colors are classified according to group information
    geom_tree(aes(color = .data$group), size = 1)+
    # The opening of the evolutionary tree faces down
    layout_dendrogram()+
    # Set the color information to remove NA from the legend
    scale_color_manual(values = col[1:8],
                       na.translate=FALSE)+
    # Modify the title of the legend
    labs(colour = 'Group of steps')+
    # Adjust the thickness of the legend line
    guides(colour = guide_legend(override.aes = list(size=2)))

  # Extracting information about the top and bottom positions of metabolic processes when the p2 evolutionary tree is drawn,
  # which is used to adjust the relative positions of the columns of the matrix
  p2$data <- data.frame(p2$data)

  roworder <- rownames(p2$data[!is.na(p2$data$label),])

  # Draw the evolutionary tree of metabolic content

  # Remove frequency information
  data <- t(Matrix[,-c(1:4)])

  # Calculate the evolutionary tree distance
  tree <- hclust(dist(data))
  # Convert to the phylo object
  tree <- as.phylo(tree)

  # Grouping information of metabolic content
  info <- data.frame(label = rownames(data), group = conversionTypes$group[match(rownames(data), conversionTypes$label)])
  # Integrate Group Information
  tree1 <- full_join(tree, info , by='label')

  p3 <- ggtree(tree1)+
    geom_tree(aes(color = .data$group), size = 1)+
    # The legend position is set to the bottom and placed vertically
    theme(legend.position = "bottom", legend.direction = "vertical")+
    scale_color_manual(values = col[9:14],
                       na.translate=FALSE)+
    labs(colour = 'Group of contents')+
    guides(colour = guide_legend(override.aes = list(size=2)))

  # Extracts information about the top and bottom positions of the metabolic content when the p3 evolutionary tree is drawn,
  # which is used to adjust the relative positions of the rows of the matrix
  p3$data <- data.frame(p3$data)
  colorder <- p3$data$label[order(p3$data$y)] %>% na.omit() %>% as.character()
  # Since the matrix is plotted with the y-axis flipped,
  # the position information of the metabolic content here must also be flipped
  colorder <- c('degree', rev(colorder))

  infomatrix_2 <- infomatrix[which(infomatrix$steps %in% roworder),colorder]

  # Matrix plotting

  conversion <- infomatrix_2[,!colnames(infomatrix_2) %in% 'degree'] %>% t()
  conversion <- data.frame(conversion)

  coefficientPosi <- which(conversion != 0, arr.ind = T)
  coefficientPosi <- data.frame(coefficientPosi, stringsAsFactors = F)
  coefficientPosi <- rbind(coefficientPosi, data.frame(row = c(1,1,nrow(conversion),nrow(conversion)),
                                                      col = c(1,ncol(conversion),1,ncol(conversion))))
  dim <- dim(conversion)

  p1 <- ggplot(data = coefficientPosi)+
    scale_y_reverse(name = 'Contents', breaks = 1:nrow(conversion),
                    labels = str_replace_all(rownames(conversion), '\\.', ' '), expand = c(0.01, 0.01), position = 'right')+
    scale_x_continuous(name = 'Steps', breaks = 1:ncol(conversion),
                       labels = str_replace_all(colnames(conversion), '\\.', ' '), expand = c(0.01, 0.01), position = 'bottom')+
    geom_point(data = coefficientPosi[1:(nrow(coefficientPosi)-4),], aes(x = col, y = row), size = 2, color = "#FA7F6F")+
    geom_point(data = coefficientPosi[(nrow(coefficientPosi)-3):nrow(coefficientPosi),], aes(x = col, y = row), size = 2, color = NA)+
    theme(axis.text.x = element_text(size = 10),
          axis.text.y = element_text(size = 10),
          axis.title.x = element_text(size = 20),
          axis.title.y = element_text(size = 20)) +
    # Change axis label format, rotation, color, font, etc.
    theme(axis.text.x = element_text(colour = "grey20", size = 10, angle = 90, hjust = 1, vjust = 0, face = "plain"),
          axis.text.y = element_text(colour = "grey20", size = 10, angle = 0, hjust = 1, vjust = 0, face = "plain"))+
    theme(panel.grid.minor = element_blank())

  # Layout format between the three figures
  design <- "#A
             BC"
  p <- wrap_plots(A = p2, B = p3, C = p1,
                 design = design)+
    # Legend integrated into one piece
    plot_layout(guides = 'collect')+
    # B and C, A and C graphics ratio set to 1:3
    plot_layout(widths = c(1, 3))+
    plot_layout(heights = c(1, 3))

  return(p)
}
