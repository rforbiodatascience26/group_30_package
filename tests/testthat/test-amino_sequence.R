test_that("creation of the aa sequence", {
  result <- amino_sequence(c("UUU", "CUU", "AUA"))
  expect_equal(result, "FLI")
})
