#' HTML link to Scholars Portal Books
#'
#' Given an ID number and some text, make a link to Scholars Portal Books.
#' @param ebook_id The ID number or string
#' @param anchor_text The anchor text
#' @return A string
#' @export
#' @examples
#' link_to_sp_books("557306", "Marcus Aurelius: A Biography")

link_to_sp_books <- function (ebook_id, anchor_text) {
    paste0('<a href="https://books.scholarsportal.info/viewdoc.html?id=', ebook_id, '">', anchor_text, '</a>')
}
