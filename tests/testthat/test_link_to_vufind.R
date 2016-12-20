context("Check VuFind links")

test_that("VuFind link is correct", {
    expect_equal(link_to_vufind("a3400583", "R Packages"), '<a href="https://www.library.yorku.ca/find/Record/3400583">R Packages</a>')
    expect_equal(link_to_vufind("3301039", "Practical Data Science with R / Zumel and Mount"), '<a href="https://www.library.yorku.ca/find/Record/3301039">Practical Data Science with R / Zumel and Mount</a>')
})
