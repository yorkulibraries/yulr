context("Check Scholars Portal Books links")

test_that("VuFind link is correct", {
    expect_equal(link_to_sp_books("557306", "Marcus Aurelius: A Biography"), '<a href="https://books.scholarsportal.info/viewdoc.html?id=557306">Marcus Aurelius: A Biography</a>')
    expect_equal(link_to_sp_books("/ebooks/ebooks3/upress/2013-05-05/1/9780773590915", "Ideological perspectives on Canada"), '<a href="https://books.scholarsportal.info/viewdoc.html?id=/ebooks/ebooks3/upress/2013-05-05/1/9780773590915">Ideological perspectives on Canada</a>')
})
