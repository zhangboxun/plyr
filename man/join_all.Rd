% Generated by roxygen2 (4.0.0): do not edit by hand
\name{join_all}
\alias{join_all}
\title{Recursively join a list of data frames.}
\usage{
join_all(dfs, by = NULL, type = "left", match = "all")
}
\arguments{
  \item{dfs}{A list of data frames.}

  \item{by}{character vector of variable names to join by.
  If omitted, will match on all common variables.}

  \item{type}{type of join: left (default), right, inner or
  full.  See details for more information.}

  \item{match}{how should duplicate ids be matched? Either
  match just the \code{"first"} matching row, or match
  \code{"all"} matching rows. Defaults to \code{"all"} for
  compatibility with merge, but \code{"first"} is
  significantly faster.}
}
\description{
Recursively join a list of data frames.
}
\examples{
dfs <- list(
  a = data.frame(x = 1:10, a = runif(10)),
  b = data.frame(x = 1:10, b = runif(10)),
  c = data.frame(x = 1:10, c = runif(10))
)
join_all(dfs)
join_all(dfs, "x")
}

