#' Plot Amino acids frequency
#'
#' Creates a bar plot showing the frequency of each amino acid
#' in a protein sequence
#' @param protein_sequence A character string containing a protein sequence.
#'
#' @returns A ggplot object showing amino acid frequencies.
#'
#' @export
#'
#' @examples plot_amino_acid_frequency("MMKFLLA")
#'
#' @importFrom stringr str_split boundary str_count
#' @importFrom ggplot2 ggplot aes geom_col theme_bw theme
#'
plot_amino_acid_frequency <- function(protein_sequence){

  # Split the protein sequence into individual amino acids
  unique_amino_acids <- protein_sequence |>
    stringr::str_split(
      pattern = stringr::boundary("character"),
      simplify = TRUE
    ) |>
    as.character() |>
    unique()

  # Count how many times each amino acid occurs
  counts <- sapply(
    unique_amino_acids,
    function(amino_acid)
      stringr::str_count(
        string = protein_sequence,
        pattern = amino_acid
      )
  ) |>
    as.data.frame()

  # Create a data frame suitable for plotting
  colnames(counts) <- c("Counts")
  counts[["AminoAcid"]] <- rownames(counts)

  # Generate a bar plot of amino acid frequencies
  amino_acid_plot <- counts |>
    ggplot2::ggplot(
      ggplot2::aes(
        x = AminoAcid,
        y = Counts,
        fill = AminoAcid
      )
    ) +
    ggplot2::geom_col() +
    ggplot2::theme_bw() +
    ggplot2::theme(legend.position = "none")

  # Return the ggplot object
  return(amino_acid_plot)
}
