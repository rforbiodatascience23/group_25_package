test_that(desc = "the right AA is translated", code = {

  # run the function to test
  codons <- c("AAA", "CCU", "GGA", "CUG", "AAC", "CUU", "UGG", "AAC", "AUG")
  AA_seq <- translation(codons)

  # test that the right mRNA is generated
  AA_check <- "KPGLNLWNM"
  expect_equal(AA_seq, AA_check)
})
