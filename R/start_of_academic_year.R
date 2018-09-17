#' Start of Academic Year
#'
#' Return the date of the start of a given academic year (always 01 September)
#' @param year A year.
#' @return A date.
#' @export
#' @examples
#' start_of_academic_year(2018)

start_of_academic_year <- function(given_year) {
    as.Date(paste0(given_year, "-09-01"))
}
