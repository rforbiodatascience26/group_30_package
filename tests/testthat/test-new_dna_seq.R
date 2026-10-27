test_that("new_dna_seq generates a valid DNA sequence", {
  dna <- new_dna_seq(10)

  expect_equal(nchar(dna), 10)
  expect_true(grepl("^[ATGC]+$", dna))
})
