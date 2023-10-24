#' Transcription from DNA to mRNA
#'
#' @param DNA_seq The DNA sequence to transcribe
#'
#' @return The transcribed mRNA sequence
#' @export
#'
#' @examples
#' DNA_seq <- 'AAACCTGGACTGAACCTTTGGAACATG'
#' mRNA_seq <- transcription(DNA_seq)
#' mRNA_seq
#'
transcription <- function(DNA_seq){
  mRNA_seq <- gsub("T", "U", DNA_seq)
  return(mRNA_seq)
}
