#' Standard codon table
#'
#' A list of codons with their corresponding one letter codes.
#'
#' @format
#' A dictionary containing 64 key-value pairs:
#' \describe{
#'   \item{key}{3 letter codon}
#'   \item{value}{one letter code}
#' }
#'
#' @source \url{https://www.ncbi.nlm.nih.gov/Taxonomy/Utils/wprintgc.cgi?chapter=tgencodes#SG1}
"codon_table"

#' Codon to Amino Acid Mapping
#'
#' A named vector containing the mapping from codons to their corresponding one-letter amino acid codes.
#'
#' @format A named vector with 64 elements:
#' \describe{
#'   \item{UUU}{F}
#'   \item{UCU}{S}
#'   \item{UAU}{Y}
#'   ...
#' }
#' @keywords datasets
"codon_data"
