#library(roxygen2)
#library(tidyverse)

#' Read a CSV format file into a data frame.
#'
#' The function determines if \code{filename} argument) exists and stops grecefully
#' if it does not.  If \code{filename} exists than the contents are returned as a
#' data frame.  If \code{filename} does not exist then nothing is returned, or assigned, but
#' no error or warning is generated.
#'
#' @param filename A character string with the name of a file.  Relative
#' or absolute paths may be used to locate the file in the string.
#'
#' @return This function returns a data frame constructed from the file contents.
#'
#' @examples
#'
#'\dontrun{
#'#' fars_read(inputfile)
#' fars_read("another.csv")
#'}
#'
#' @export

fars_read <- function(filename) {
        if(!file.exists(filename))
                stop("file '", filename, "' does not exist")
        data <- suppressMessages({
                readr::read_csv(filename, progress = FALSE)
        })
        dplyr::tbl_df(data)
}

make_filename <- function(year) {
        year <- as.integer(year)
        sprintf("accident_%d.csv.bz2", year)
}

