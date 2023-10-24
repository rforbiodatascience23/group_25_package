test_that(desc = "the right codons are generated", code = {

  # run the function to test
  mRNA_seq <- "AAACCUGGACUGAACCUUUGGAACAUG"
  codons <- mRNA_to_codons(mRNA_seq, 1)

  # test that the right mRNA is generated
  codons_check <- c("AAA", "CCU", "GGA", "CUG", "AAC", "CUU", "UGG", "AAC", "AUG")
  expect_equal(codons, codons_check)
})
