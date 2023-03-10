% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Rlibs.R
\name{Rlibs}
\alias{Rlibs}
\title{Rlibs}
\usage{
Rlibs(files)
}
\arguments{
\item{files}{character: file name(s)}
}
\value{
a table how frequently the packages are called
}
\description{
Counts the number of \code{library} and \code{require} commands in the files.
}
\examples{
if (interactive()) {
  files <- list.files(pattern="*.R$", full.names=TRUE, recursive=TRUE)
  Rlibs(files)
}
}
