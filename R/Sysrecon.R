#' @title Sysrecon
#' @description Input the txt and output the visualization of the steps, transformation and databases and tools.
#' @details Input takes a data.frame x with two variables v and w and returns the maximum knapsack value and which elements (rows in the data.frame).
#' @param inputTxt A txt contains the methods and contents of the metabolic reconstruction in articles.
#' @param stepsMatrix A data frame the marker words, threshold value, steps, group and other information about the metabolic reconstruction. The default file is in the data.
#' @param stepTypes A data frame the labels and groups of the metabolic reconstructions steps. The default file is in the data.
#' @param conversionMatrix A data frame contains the marker words, threshold value, steps, group and other transformation information about the metabolic reconstruction. The default file is in the data.
#' @param conversionTypes A data frame contains the labels and groups of the metabolic reconstructions transformation. The default file is in the data.
#' @param toolsMatrix A data frame contains the marker words, threshold value, steps, group and other information about the metabolic reconstruction databases and tools. The default file is in the data.
#' @param toolsTypes A data frame contains the databases and the tools used in the metabolic reconstruction.
#' @param contentTypes A data frame contains the labels and groups of the metabolic reconstructions content The default file is in the data.
#' @return The pictures that visualize the steps, transformation and databases and tools of the metabolic reconstruction.
#' @export
#' @import readxl
#' @import readr
#' @examples
#' exam <- Sysrecon(inputTxt, stepsMatrix, stepTypes, conversionMatrix, conversionTypes,
#'   toolsMatrix, toolsTypes, contentTypes)

  Sysrecon <- function(inputTxt, stepsMatrix, stepTypes, conversionMatrix, conversionTypes, toolsMatrix, toolsTypes, contentTypes){

  text <- inputTxt
  text <- paste0(text[,1], collapse = ' ')

  stepsMatrix <- data.frame(stepsMatrix)
  stepTypes <- data.frame(stepTypes)

  conversionMatrix <- data.frame(conversionMatrix)
  conversionTypes <- data.frame(conversionTypes)

  toolsMatrix <- data.frame(toolsMatrix)
  toolsTypes <- data.frame(toolsTypes)

  contentTypes <- data.frame(contentTypes)

  ### The visualization  of the metabolic process
  figure_1 <- vizProcess(text, stepsMatrix, stepTypes, contentTypes)
  print(figure_1)

  ### The visualization  of the metabolic process content
  figure_2 <- vizTransformation(text, conversionMatrix, stepTypes, conversionTypes)
  print(figure_2)

  ### The visualization of the database and tools
  figure_3 <- vizTools(text, toolsMatrix, stepTypes, toolsTypes)
  print(figure_3)

}







