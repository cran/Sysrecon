% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/vizTools.R
\name{vizTools}
\alias{vizTools}
\title{vizTools}
\usage{
vizTools(text, toolsMatrix, stepTypes, toolsTypes)
}
\arguments{
\item{text}{The characters processed with the collapse = ' '.}

\item{toolsMatrix}{A data frame contains the marker words, threshold value, steps, group and other information about the metabolic reconstruction databases and tools. The default file is in the data.}

\item{stepTypes}{A data frame contains the labels and groups of the metabolic reconstructions steps. The default file is in the data.}

\item{toolsTypes}{A data frame contains the databases and the tools used in the metabolic reconstruction.}
}
\value{
The pictures that visualize the databases and tools of the metabolic reconstruction.
}
\description{
Input the txt and output the visualization of the steps, transformation and databases and tools.
}
\examples{
\donttest{exam <- vizTools(text, toolsMatrix, stepTypes, toolsTypes)}
}
