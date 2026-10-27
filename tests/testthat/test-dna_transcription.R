test_that("dna is transcribed into rna", {
  result <- dna_transcribe("ATCG")

  # Check if the output matches what you expect
  expect_equal(result, "AUCG")
})
