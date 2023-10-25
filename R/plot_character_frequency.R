#' Plot the frequency of each unique character in a given string
#'
#' This function takes a string as input and plots a bar chart showing the frequency
#' of each unique character in the string. The plot is generated using ggplot2.
#'
#' @param input_string The string whose character frequencies are to be plotted.
#'
#' @return A ggplot2 object representing the plot.
#'
#' @importFrom ggplot2 ggplot aes geom_col theme_bw theme
#' @importFrom stringr str_split boundary str_count
#' @examples
#' plot_character_frequency("hello")
#' @export
plot_character_frequency <- function(input_string){
  # Check for empty string
  if (input_string == "") {
    stop("Input string cannot be empty")
  }

  # Check for non-string input
  if (!is.character(input_string)) {
    stop("Input must be a string")
  }

  unique_chars <- input_string |>
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) |>
    as.character() |>
    unique()

  counts <- sapply(unique_chars, function(char) stringr::str_count(string = input_string, pattern = char)) |>
    as.data.frame()

  colnames(counts) <- c("Counts")
  counts[["Character"]] <- rownames(counts)

  plot <- counts |>
    ggplot2::ggplot(ggplot2::aes(x = Character, y = Counts, fill = Character)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw() +
    ggplot2::theme(legend.position = "none")

  return(plot)
}
