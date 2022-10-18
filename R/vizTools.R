#' @title vizTools
#' @description Input the txt and output the visualization of the steps, transformation and databases and tools.
#' @param text The characters processed with the collapse = ' '.
#' @param stepTypes A data frame contains the labels and groups of the metabolic reconstructions steps. The default file is in the data.
#' @param toolsMatrix A data frame contains the marker words, threshold value, steps, group and other information about the metabolic reconstruction databases and tools. The default file is in the data.
#' @param toolsTypes A data frame contains the databases and the tools used in the metabolic reconstruction.
#' @return The pictures that visualize the databases and tools of the metabolic reconstruction.
#' @export
#' @examples
#' \donttest{exam <- vizTools(text, toolsMatrix, stepTypes, toolsTypes)}

vizTools <- function(text, toolsMatrix, stepTypes, toolsTypes){

  wordsMatrix <- get_term_matrix(text)
  matrixTools <- map_word_to_step(wordsMatrix, toolsMatrix)

  dataTools <- matrixTools[!apply(matrixTools, 1, function(x){all(x == 0)}),]
  dataTools <- dataTools[,!apply(dataTools, 2, function(x){all(x == 0)})]

  if(min(dim(dataTools)) > 1 & !is.infinite(min(dim(dataTools)))){
    matrixToolsFigure <- draw_conversion_tree(matrixTools, toolsMatrix, stepTypes, toolsTypes)
    return(matrixToolsFigure)
  } else {
    message("Literature information content is too little.")
  }
}
