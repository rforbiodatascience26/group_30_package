#' Split DNA into codons

#' @param DNA it is a dna requence
#' @param start Starting position for reading codons
#' @returns A character of codon
#' @export
#' @examples split_codons("ATGGCTAAA")
split_codons <- function(DNA, start = 1){
  sequence_length <- nchar(DNA)
  codons <- substring(DNA,
                      first = seq(from = start, to = sequence_length-3+1, by = 3),
                      last = seq(from = 3+start-1, to = sequence_length, by = 3))
  return(codons)
}
