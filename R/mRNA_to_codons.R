#' Split the mRNA into codons
#'
#' @param mRNA_seq The mRNA sequence to be split (str).
#' @param start The position at which to start at (int). Default is 1.
#'
#' @return A list of codons (str)
#' @export
#'
#' @examples
#'
#' mRNA <- "AAACCUGGACUGAACCUUUGGAACAUG"
#' codons <- mRNA_to_codons(mRNA, start = 1)
#' codons
#'
mRNA_to_codons <- function(mRNA_seq, start = 1){
  mRNA_length <- nchar(mRNA_seq)
  codons <- substring(mRNA_seq,
                      first = seq(from = start, to = mRNA_length-3+1, by = 3),
                      last = seq(from = 3+start-1, to = mRNA_length, by = 3))
  return(codons)
}
