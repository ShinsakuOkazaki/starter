#' Sum of two numbers.
#'
#' \code{starter.sum} returns the sum of all the values present in its arguments.
#' @param a A number.
#' @param b A number.
#' @return The sum of \code{x} and \code{y}.
#' @examples
#' add(1, 1)
#' add(10, 1)
#' \dontrun{
#' add("a")
#' }
add <- function(a, b) {
  if (is.numeric(a) && is.numeric(b)) {
    return (a + b)
  } else {
    stop("Not double")
  }
}




#' Multiply of two numbers
#'
#' \code{starter.sum} returns the product of all the values present in its arguments.
#' @param a A number.
#' @param b A number.
#' @return The product of \code{x} and \code{y}.
#' @examples
#' multiply(1, 1)
#' multiply(10, 1)
#' \dontrun{
#' multiply("a")
#' }
multiply <- function(a, b) {
  if (typeof(a) == 'double' && typeof(b) == 'double') {
    return (a * b)
  } else {
    stop("Not double")
  }
}



