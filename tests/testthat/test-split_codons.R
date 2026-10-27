test_that("split_codons splits DNA into codons", {
  expect_equal(
    split_codons("ATGGCTAAA"),
    c("ATG", "GCT", "AAA")
  )
})


