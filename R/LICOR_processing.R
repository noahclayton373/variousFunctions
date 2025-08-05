#' Clean up a raw LI-COR file for data analysis
#'
#' Removes all the extra data at the top of CSV regarding LI-COR conditions.
#' Moves the column names from the middle of the dataset to the top.
#'
#' @param file A data frame that contains the raw LI-COR data loaded from a CSV
#' @return A cleaned up version of the data
#' @export
RAW_file_cleanup <- function(file) {
  # first remove the top 11 rows
  file <- file[13:nrow(file),]

  # remove the second row
  file <- file[c(1, 3:nrow(file)), ]

  row_names <- as.character(file[1, ])
  names(file) <- row_names

  # remove the repeat first row
  dat <- file[2:nrow(file), ]
}
