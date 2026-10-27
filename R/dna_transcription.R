#' DNA transcription
#' @param dna is the dna sequence of aminoacids you want to convert into rna
#' @returns rna from original dna strand
#' @export
#' @examples
#' dna_transibe("ATTCGC")
#' "ATTCGC" will become "AUUCGC"
T_to_U <- function(dna){
  result <- gsub("T", "U", dna)
  return(result)
}
