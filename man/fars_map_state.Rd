% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fars_functions.R
\name{fars_map_state}
\alias{fars_map_state}
\title{Generates a map of the state outline and location of accidents.}
\usage{
fars_map_state(state.num, year)
}
\arguments{
\item{state.num}{integer ID for state}

\item{year}{an integer value or a value that can be ast to an integer.}
}
\value{
This function returns a map object.
}
\description{
The function checks the argument \code{state.num} and returns gracefully if the integer is outside
the range of state codes.  NA values are treated for the location of the accident (latitude and longitude)
before generating the plot.
}
\examples{
\dontrun{
#' fars_map_state(1, 2014)
fars_map_state(40, 2015)
}
}
