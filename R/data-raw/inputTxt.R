library(readxl)

inputTxt <- read.table('data-row/Archaea.txt',sep = '\n',encoding = 'UTF-8',fill = T)

devtools::use_data(inputTxt,overwrite = TURE)
