#' Readable MARC 245
#'
#' Convert raw MARC field into something human-readable
#' @param title A MARC 245 title string (with subfields)
#' @return A string
#' @export
#' @examples
#' readable_marc245("$a R packages / $c Hadley Wickham.")

readable_marc245 <- function (raw_245, include.author = TRUE) {
    ## Remove $a if any
    title <- gsub("\\$a ", "", raw_245)
    ## Collapse the subtitle
    ## Drop the author and anything after
    if (include.author) {
        title <- gsub(" : \\$c ", " / ", title)
    } else {
        title <- gsub(" : \\$c.*", "", title)
    }
    return(title)
}