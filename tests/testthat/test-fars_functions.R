# test_that("multiplication works", {
#   expect_equal(2 * 2, 4)
# })

test_that("Name by integer", {
    file1 <- make_filename(2010)
    file2 <- make_filename("2010")
    expect_equal(file1, "accident_2010.csv.bz2")
    expect_equal(file2, "accident_2010.csv.bz2")
    expect_equal(file1, file2)
})
