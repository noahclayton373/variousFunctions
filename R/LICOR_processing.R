#' Clean up a raw LI-COR file for data analysis
#'
#' Removes all the extra data at the top of CSV regarding LI-COR conditions.
#' Moves the column names from the middle of the dataset to the top.
#'
#' @param dat A datafile called "dat" --> the raw LI-COR data loaded as a CSV
#' @return A cleaned up version of the data
#' @export
RAW_file_cleanup <- function(dat) {
  # first remove the top 11 rows
  dat <- dat[13:nrow(dat),]

  # remove the second row
  dat <- dat[c(1, 3:nrow(dat)), ]

  row_names <- as.character(dat[1, ])
  names(dat) <- row_names

  # remove the repeat first row
  dat <- dat[2:nrow(dat), ]
}
