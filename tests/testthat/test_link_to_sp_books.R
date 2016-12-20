context("Check Scholars Portal Books links")

test_that("VuFind link is correct", {
    expect_equal(link_to_sp_books("557306", "Marcus Aurelius: A Biography"), '<a href="https://books.scholarsportal.info/viewdoc.html?id=557306">Marcus Aurelius: A Biography</a>')
})
