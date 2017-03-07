#' Readable MARC 245
#'
#' Convert raw MARC field into something human-readable
#' @param title A MARC 245 title string (with subfields $a $b $c)
#' @param include.author Include the $c subfield; default is TRUE
#' @return A string
#' @export
#' @examples
#' readable_marc245("$a R packages / $c Hadley Wickham.")

readable_marc245 <- function (raw_245, include.author = TRUE) {
    ## Remove $a if any
    title <- gsub("\\$a ", "", raw_245)
    ## Collapse the subtitle
    title <- gsub(":\\s+\\$b\\s+", ": ", title)
    ## Drop the author and anything after (if desired)
    if (include.author) {
        title <- gsub(" / \\$c ", " / ", title)
    } else {
        title <- gsub(" / \\$c.*", "", title)
    }
    ## Remove $h (format) if any
    title <- gsub("\\s+\\$h\\s+", " ", title)
    return(title)
}
