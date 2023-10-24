#' Convert to DNA to RNA
#'
#' @param dna string containing a DNA strand in the format 'ATGC'
#'
#' @return returns the matching RNA strand after translation
#' @export
#'
#' @examples
#' convert_to_rna('TAGTCGA')
convert_to_rna <- function(dna){
  rna <- gsub("T", "U", dna)
  return(rna)
}
