library(readxl)

stepTypes <- read_xlsx('data-raw/stepTypes.xlsx')

devtools::use_data(stepTypes,overwrite = TRUE)
