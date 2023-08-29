#' R DATA ANALYSIS
#'
# This workshop involves an analysis of flight data using the nycflights13 package and the tidyverse collection of packages in the R programming language.
#'
#' @param x The exercise number (ranging from 1 to 6).
#' @return The solution for the specified exercise.
#' @export
#'
#' @import nycflights13
#' @import tidyverse
#' @import knitr
#' @importFrom rlang is_integer
#' @importFrom rlang abort
#' @importFrom rlang exec
#'
#' @examples
#' # Retrieve the solution for exercise 3
#' SYA(3)
#'
#' # Retrieve the solution for exercise 6
#' SYA(6)
# Function to select questions and answers based on the exercise number

SYA <- function(x) {
  library(nycflights13)
  library(tidyverse)
  library(knitr)
  if (x == 1) {
    return(Ex1())
  } else if (x == 2) {
    return(Ex2())
  } else if (x == 3) {
    return(Ex3())}
  else if (x == 4) {
  return(Ex4())}
  else if (x == 5) {
    return(Ex5())}
  else if (x == 6) {
    return(Ex6())}
  else {

    print("It is not possible to perform this operation")
  }
}

