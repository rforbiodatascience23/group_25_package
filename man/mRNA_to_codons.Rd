% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mRNA_to_codons.R
\name{mRNA_to_codons}
\alias{mRNA_to_codons}
\title{Split the mRNA into codons}
\usage{
mRNA_to_codons(mRNA_seq, start = 1)
}
\arguments{
\item{mRNA_seq}{The mRNA sequence to be split (str).}

\item{start}{The position at which to start at (int). Default is 1.}
}
\value{
A list of codons (str)
}
\description{
Split the mRNA into codons
}
\examples{

mRNA <- "AAACCUGGACUGAACCUUUGGAACAUG"
codons <- mRNA_to_codons(mRNA, start = 1)
codons

}
