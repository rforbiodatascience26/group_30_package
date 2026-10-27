#' Function that creates new DNA seq.
#' @param number
#' Number of bases in seq.
#' @returns
#' New arbitrary seq.
#' @export
#'
#' @examples
#' new_dna_seq(10)
new_dna_seq <- function(number){
  dna <- sample(c("A", "T", "G", "C"), size = number, replace = TRUE)
  sequence <- paste0(dna, collapse = "")
  return(sequence)
}
