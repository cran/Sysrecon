#' @title vizTransformation
#' @description Input the txt and output the visualization of the steps, transformation and databases and tools.
#' @param text The characters processed with the collapse = ' '.
#' @param stepTypes A data frame contains the labels and groups of the metabolic reconstructions steps. The default file is in the data.
#' @param conversionMatrix A data frame contains the marker words, threshold value, steps, group and other transformation information about the metabolic reconstruction. The default file is in the data.
#' @param conversionTypes A data frame contains the labels and groups of the metabolic reconstructions transformation. The default file is in the data.
#' @return The pictures that visualize the transformation of the metabolic reconstruction.
#' @export
#' @examples
#' \donttest{exam <- vizTransformation(text, conversionMatrix, stepTypes, conversionTypes)}

  vizTransformation <- function(text, conversionMatrix, stepTypes, conversionTypes){

  wordsMatrix <- get_term_matrix(text)

  matrixProcessConversion <- map_word_to_step(wordsMatrix, conversionMatrix)

  dataConversion <- matrixProcessConversion[!apply(matrixProcessConversion, 1, function(x){all(x == 0)}),]
  dataConversion <- dataConversion[,!apply(dataConversion, 2, function(x){all(x == 0)})]

  if(min(dim(dataConversion)) > 1 & !is.infinite(min(dim(dataConversion)))){
    matrixProcessConversionFigure <- draw_conversion_tree(matrixProcessConversion, conversionMatrix, stepTypes, conversionTypes)
    return(matrixProcessConversionFigure)
  } else {
    message("Literature information content is too little.")
  }

}
