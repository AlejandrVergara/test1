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

    print("no se puede bro")
  }
}
