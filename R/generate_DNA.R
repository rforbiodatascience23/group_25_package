#' Generate a DNA sequence
#'
#' @param DNA_length The size of the DNA sequence to be generated (int)
#'
#' @return A DNA sequence of the desired length (str)
#' @export
#'
#' @examples
#' DNA_seq_50 <- generate_DNA(DNA_length = 50)
#' DNA_seq_50
#'
generate_DNA <- function(DNA_length) {
  nucleotides <- sample(c("A", "T", "G", "C"), size = DNA_length, replace = TRUE)
  DNA_seq <- paste0(nucleotides, collapse = "")
  return(DNA_seq)
}
