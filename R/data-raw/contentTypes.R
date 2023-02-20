library(readxl)

contentTypes <- read_xlsx('data-raw/contentTypes.xlsx')

devtools::use_data(contentTypes,overwrite = TRUE)