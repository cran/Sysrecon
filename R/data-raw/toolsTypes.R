library(readxl)

toolsTypes <- read_xlsx('data-raw/toolsTypes.xlsx')

devtools::use_data(toolsTypes,overwrite = TRUE)