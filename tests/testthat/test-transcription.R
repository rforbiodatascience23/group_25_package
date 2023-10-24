test_that(desc = "the right mRNA sequence is generated", code = {

  # run the function to test
  DNA_seq <- 'AAACCTGGACTGAACCTTTGGAACATG'
  mRNA_seq <- transcription(DNA_seq)

  # test that the right mRNA is generated
  mRNA_check <- "AAACCUGGACUGAACCUUUGGAACAUG"
  expect_equal(mRNA_seq, mRNA_check)
})
