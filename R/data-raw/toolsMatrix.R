library(readxl)

toolsMatrix <- read_xlsx('data-raw/toolsMatrix.xlsx')

devtools::use_data(toolsMatrix,overwrite = TRUE)