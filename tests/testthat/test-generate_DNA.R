test_that(desc = "the right length is generated", code = {

  # run the function to test
  len = 100
  DNA_seq_100 <- generate_DNA(DNA_length = len)

  # test that th seq is the right length
  expect_equal(nchar(DNA_seq_100), len)
})
