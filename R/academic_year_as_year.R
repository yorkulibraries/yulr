#' Academic Year as Year
#'
#' Determine the academic year for a given date and return it as a Date
#' @param date A date.
#' @return A date
#' @export
#' @examples
#' academic_year_as_year("2016-10-31")

academic_year_as_year <- function(date_string) {
    as.Date(paste0(academic_year(date_string), "-01-01"))
}
