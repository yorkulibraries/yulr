context("Check title readabilizing")

test_that("Formatting is correct", {
    expect_equal(readable_marc245("$a Title : $c Author"), "Title / Author")
    expect_equal(readable_marc245("$a Title : $c Author", include.author = FALSE), "Title")
})
