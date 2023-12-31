# Declare global variable to avoid R CMD check warnings
globalVariables("codon_table")
#' Translation from codons to Amino Acid sequence
#'
#' @param codons A list of codons to translate
#'
#' @return The AA sequence (str)
#' @export
#'
#' @examples
#'
#' codons <- c("AAA", "CCU", "GGA", "CUG", "AAC", "CUU", "UGG", "AAC", "AUG")
#' AA_seq <- translation(codons)
#' AA_seq
#'
translation <- function(codons){
  # Translate the codons to amino acids
  AA_seq <- paste0(codon_table[codons], collapse = "")

  return(AA_seq)
}
