# Test: Check if function returns a ggplot object
test_that('plot_character_frequency returns a ggplot object', {
  result <- plot_character_frequency('hello')
  expect_s3_class(result, 'ggplot')
})

# Test: Check if function handles empty string
test_that('plot_character_frequency handles empty string', {
  expect_error(plot_character_frequency(''), "Input string cannot be empty")
})

# Test: Check if function handles numeric input (should ideally return an error)
test_that('plot_character_frequency handles numeric input', {
  expect_error(plot_character_frequency(123))
})
