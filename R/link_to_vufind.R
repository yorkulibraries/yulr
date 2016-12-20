#' HTML link to VuFind record
#'
#' Given a control number and some text, make a link to VuFind.
#' @param control_number The control number
#' @param anchor_text The anchor text
#' @return A string
#' @export
#' @examples
#' link_to_vufind("a3400583", "R Packages")

link_to_vufind <- function (control_number, anchor_text) {
    paste0('<a href="https://www.library.yorku.ca/find/Record/', gsub("^a", "", control_number), '">', anchor_text, '</a>')
}
