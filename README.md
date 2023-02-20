---
title: "README"
output: html_document
date: "2023-01-29"
---
## Introduction
In the past decade, genome-scale metabolic reconstructions have widely been 
used to comprehend the systems biology of metabolic pathways within an organism. 
Different GSMs are constructed using various techniques that 
require distinct steps, but the input data, information conversion and software tools
are neither concisely defined nor mathematically or programmatically formulated
in a context-specific manner.The tool that quantitatively and qualitatively specifies
each reconstruction steps and can generate a template list of reconstruction steps dynamically
selected from a reconstruction step reservoir, constructed based on all available published papers.

## Installation and load pacakges

```
install.packages('Sysrecon')
library(Sysrecon)
```

## Data Preparetion

To visualize the steps, databases and tools used in the genome-scale metabolic reconstruction, We need eight types of data as inputs - inputTxt, stepsMatrix, stepTypes, conversionMatrix, conversionTypes, toolsMatrix, toolsTypes and contentTypes.

inputTxt is a variable that contains the contents of the metabolic reconstruction in an article and there is an example of the inputTxt in the Sysrecon package.

```
inputTxt = Sysrecon::inputTxt

```
If you want to analyze another article, you can import the article to the R.

```
inputTxt = read.table(path, fill = T, sep = '\n', quote = "")
```

The other seven types of data are in the package and all of them are data frame types. stepsMatrix contains the details of the steps of the metabolic reconstruction and stepTypes is a data frame contains the labels and groups of the stepsMatrix. conversionMatrix contains the details of the transformation of the metabolic reconstruction and conversionTypes contains the labels and groups of the conversionMatrix.
toolsMatrix contains the details of the databases and tools of the metabolic reconstruction and toolsTypes contains the labels and groups of toolsMatrix. Finally, contentTypes contains the labels and groups of the contents of metabolic reconstruction.

```
stepsMatrix = Sysrecon::stepsMatrix
stepTypes = Sysrecon::stepTypes
conversionMatrix = Sysrecon::conversionMatrix
conversionTypes = Sysrecon::conversionTypes
toolsMatrix = Sysrecon::toolsMatrix
toolsTypes = Sysrecon::toolsTypes
contentTypes = Sysrecon::contentTypes

```
## Usage
### Use Sysrecon packege

When all of data needed are prepared, the Sysrecon package can be used.

```
Sysrecon(inputTxt, stepsMatrix, stepTypes, conversionMatrix, conversionTypes, toolsMatrix, toolsTypes, contentTypes)
```
This will generates three pictures and an output. The three pictures are the visualization of the steps, transformation, and databases and tools of the metabolic reconstruction, respectively. And the output is like the chemical formula to facilitate understanding the steps and elements needed in a step.


### Use the function vizProcess

Besides Sysrecon can visualize the steps of the metabolic reconstruction, so does the function vizProcess. In addition, vizProcess also can generates the output that contains chemical-like steps.

```
text = paste0(inputTxt[,1], collapse = ' ')

vizProcess(text, stepsMatrix, stepTypes, contentTypes)
```
### Use the function vizTransformation

The function vizTransformation is a function specifically for visualizing the transformation of the metabolic reconstruction.

```
text = paste0(inputTxt[,1], collapse = ' ')

vizTransformation(text, conversionMatrix, stepTypes, conversionTypes)
```

### Use the function vizTools

The function vizTransformation is a function specifically for visualizing the databases and tools used in the metabolic reconstruction.

```
text = paste0(inputTxt[,1], collapse = ' ')

vizTools(text, toolsMatrix, stepTypes, toolsTypes)
```

## Session information

```
sessionInfo()
# R version 4.2.2 (2022-10-31 ucrt)
# Platform: x86_64-w64-mingw32/x64 (64-bit)
# Running under: Windows 10 x64 (build 22000)
#
# Matrix products: default
#
# locale:
# [1] LC_COLLATE=Chinese (Simplified)_China.utf8  LC_CTYPE=Chinese (Simplified)_China.utf8   
# [3] LC_MONETARY=Chinese (Simplified)_China.utf8 LC_NUMERIC=C                               
# [5] LC_TIME=Chinese (Simplified)_China.utf8    
#
# attached base packages:
# [1] stats     graphics  grDevices utils     datasets  methods   base     
#
# other attached packages:
# [1] Sysrecon_0.1.2 pkgdown_2.0.7  devtools_2.4.5 usethis_2.1.6 
#
# loaded via a namespace (and not attached):
# [1] nlme_3.1-160        fs_1.5.2            ggtree_3.6.2        lubridate_1.9.0     httr_1.4.4         
# [6] RColorBrewer_1.1-3  rprojroot_2.0.3     SnowballC_0.7.0     tools_4.2.2         profvis_0.3.7      
# [11] backports_1.4.1     utf8_1.2.2          R6_2.5.1            DBI_1.1.3           lazyeval_0.2.2    
# [16] colorspace_2.0-3    urlchecker_1.0.1    withr_2.5.0         tidyselect_1.2.0    prettyunits_1.1.1  
# [21] processx_3.8.0      compiler_4.2.2      rvest_1.0.3         cli_3.4.1           NLP_0.2-1          
# [26] xml2_1.3.3          desc_1.4.2          slam_0.1-50         scales_1.2.1        tm_0.7-9           
# [31] readr_2.1.3         callr_3.7.3         stringr_1.4.1       digest_0.6.30       yulab.utils_0.0.5  
# [36] rmarkdown_2.18      pkgconfig_2.0.3     htmltools_0.5.3     sessioninfo_1.2.2   dbplyr_2.2.1       
# [41] fastmap_1.1.0       htmlwidgets_1.5.4   rlang_1.0.6         readxl_1.4.1        rstudioapi_0.14    
# [46] shiny_1.7.3         gridGraphics_0.5-1  generics_0.1.3      jsonlite_1.8.3      googlesheets4_1.0.1
# [51] dplyr_1.0.10        magrittr_2.0.3      ggplotify_0.1.0     patchwork_1.1.2     Rcpp_1.0.9         
# [56] munsell_0.5.0       fansi_1.0.3         ape_5.6-2           lifecycle_1.0.3     stringi_1.7.8      
# [61] yaml_2.3.6          pkgbuild_1.3.1      plyr_1.8.8          grid_4.2.2          parallel_4.2.2     
# [66] promises_1.2.0.1    forcats_0.5.2       crayon_1.5.2        miniUI_0.1.1.1      lattice_0.20-45    
# [71] haven_2.5.1         hms_1.1.2           knitr_1.41          ps_1.7.2            pillar_1.8.1       
# [76] pkgload_1.3.2       reprex_2.0.2        glue_1.6.2          evaluate_0.18       ggfun_0.0.9        
# [81] BiocManager_1.30.19 modelr_0.1.10       remotes_2.4.2       vctrs_0.5.0         treeio_1.22.0      
# [86] tzdb_0.3.0          httpuv_1.6.6        cellranger_1.1.0    gtable_0.3.1        purrr_0.3.5        
# [91] tidyr_1.2.1         assertthat_0.2.1    cachem_1.0.6        ggplot2_3.4.0       xfun_0.34          
# [96] mime_0.12           xtable_1.8-4        broom_1.0.1         tidyverse_1.3.2     tidytree_0.4.1     
# [101] roxygen2_7.2.2      later_1.3.0         googledrive_2.0.0   gargle_1.2.1        tibble_3.1.8       
# [106] aplot_0.1.9         memoise_2.0.1       timechange_0.1.1    ellipsis_0.3.2     
```




