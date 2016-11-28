#' Academic Year
#'
#' Determine the academic year for a given date
#' @param date A date
#' @return A year (integer)
#' @export
#' @examples
#' academic_year("2016-10-31")

academic_year <- function(y) {
    as.integer(format(floor_date(floor_date(as.Date(y), "month") - months(8), "year"), "%Y"))
}
