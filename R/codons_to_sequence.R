#' From codons to amino sequence
#' @param codons short sequence of 3 nucleotides
#' @returns the sequence of aminoacids
#' @export
#' @examples
#' # "M", "P" and "G" are put together into MFG sequence
amino_sequence <- function(codons){
  sequence <- paste0(aminoacide_encoding[codons], collapse = "")
  return(sequence)
}
