#' Function for generating new DNA seq
#' @param number
#'number of bases in a generated sequence.
#' @returns
#' the arbitrary dna sequence
#' @export
#'
#' @examples
#' new_dna_seq(10)
new_dna_seq <- function(number){
  dna <- sample(c("A", "T", "G", "C"), size = number, replace = TRUE)
  result <- paste0(dna, collapse = "")
  return(result)
}
