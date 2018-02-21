context("Check various dates")

test_that("Start and end dates are correct", {
    expect_equal(academic_year("2016-08-31"), as.integer(2015))
    expect_equal(academic_year("2016-09-01"), as.integer(2016))
})

test_that("Special days are correct", {
    expect_equal(academic_year("2016-02-29"), as.integer(2015))
})

test_that("Academic year as year is a date", {
    expect_equal(academic_year_as_year("2016-02-29"), as.Date("2015-01-01"))
})
