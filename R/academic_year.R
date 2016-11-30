#' Academic Year
#'
#' Determine the academic year for a given date
#' @param date A date.
#' @return An integer.
#' @export
#' @examples
#' academic_year("2016-10-31")

academic_year <- function(date_string) {
    as.integer(format(lubridate::floor_date(lubridate::floor_date(as.Date(date_string), "month") - months(8), "year"), "%Y"))
}
