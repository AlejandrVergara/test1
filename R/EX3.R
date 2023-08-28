Ex3 <- function(x){
  cat("\n")
  cat(
"5.3.1 Exercises

1 What happens if you include the name of a variable multiple times in a select() call?

  Answer: Variable appears repeatedly in a result

2. What does the any_of() function do? Why might it be helpful in conjunction with this vector?

vars <- c(year, month, day, dep_delay, arr_delay)

Answer: The any_of() function is used to select columns from a data frame using
a character vector consisting of column names. In relation to the provided line of code,
this function could be really advantageous.

3.Does the result of running the following code surprise you?
How do the select helpers deal whit case by default? How can y


select(flights, contains(TIME))


Answer: This code chooses the columns that have TIME in their names and also contain
the word TIME in their cells. The selected columns are renamed as;
dep_time, sched_dep_time, arr_time, sched_arr_time and air_time is renamed as hour_time")
}
