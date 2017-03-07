context("Check title readabilizing")

test_that("Formatting is correct", {
    expect_equal(readable_marc245("$a R packages / $c Hadley Wickham"), "R packages / Hadley Wickham")
    expect_equal(readable_marc245("$a R packages / $c Hadley Wickham", include.author = FALSE), "R packages")
    expect_equal(readable_marc245("The order of things : $b an archaeology of the human sciences / $c Michel Foucault"), "The order of things : an archaeology of the human sciences / Michel Foucault")
    expect_equal(readable_marc245("Biocalculus :  $b  calculus, probability, and statistics for the life \  $c James Stewart and Troy Day", include.author = FALSE), "Biocalculus : calculus, probability, and statistics for the life \  $c James Stewart and Troy Day")
    expect_equal(readable_marc245("Thoughts on an union $h [electronic resource] / $c by Joshua Spencer.", include.author = FALSE), "Thoughts on an union [electronic resource]")

})
