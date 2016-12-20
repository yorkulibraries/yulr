context("Check title readabilizing")

test_that("Formatting is correct", {
    expect_equal(readable_marc245("$a R packages / $c Hadley Wickham"), "R packages / Hadley Wickham")
    expect_equal(readable_marc245("$a R packages / $c Hadley Wickham", include.author = FALSE), "R packages")
    expect_equal(readable_marc245("The order of things : $b an archaeology of the human sciences / $c Michel Foucault"), "The order of things : an archaeology of the human sciences / Michel Foucault")

})
