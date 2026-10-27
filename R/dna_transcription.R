#' DNA transcription
#' @param dna is the dna sequence of aminoacids you want to convert into rna
#' @returns rna from original dna strand
#' @export
#' @examples dna_transcribe("ATTCGC")
#' # "ATTCGC" will become "AUUCGC"
dna_transcribe <- function(dna){
  result <- gsub("T", "U", dna)
  return(result)
}
