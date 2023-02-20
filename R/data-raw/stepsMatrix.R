library(readxl)
stepsMatrix <- read_xlsx('data-raw/stepsMatrix.xlsx')

devtools::use_data(stepsMatrix,overwrite = TRUE)