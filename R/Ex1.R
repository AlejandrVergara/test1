Ex1 <- function(x){

library(nycflights13)
library(tidyverse)
  library(knitr)
exercise <- nycflights13::flights

Data_1 <- filter(exercise, arr_delay >= "2")
Data_2 <- filter(exercise, dest == "IAH" | dest == "HOU")
cat("\n")
cat("5.2.4 Exercises:")
cat("\n")
cat("1\n")

cat("#The first step is to load the nycflights13 and tidyverse libraries:\n")

cat("\n")
cat("\n")

cat("library(nycflights13)\n")
cat("library(tidyverse)\n")
cat("library(knitr)\n")

cat("\n")
cat("\n")
cat(
"#Then the flight data is assigned to a called variable,
 prin this case the variable exercise This allows you to use the variable exercise to reference
 the data in the code:\n")

cat("\n")
cat("\n")

cat("exercise <- nycflights13::flights\n")

cat("\n")
cat("\n")

cat("Data_1 <- filter(exercise, arr_delay >= 2)\n")
cat("\n")
cat("\n")
cat(
"#A new dataset named Data_1 is created by using the filter() function,
which is part of the dplyr package within tidyverse. This function allows you to filter
the data according to a given condition.\n")
cat("\n")
cat("\n")

print(kable(Data_1[1:10, c(1, 14, 13, 9)],
            caption = "In this table, you can see information about the flights.",
            align = "c"))
cat("\n")
cat("2\n")


cat("Data_2 <- filter(exercise, dest == \"IAH\" | dest == \"HOU\")\n")

cat("\n")

cat(
"# In this code, we use the OR operator (\\|) to filter out flights that are bound for Houston,
either IAH or HOU. The condition dest == \"IAH\" \\| dest == \"HOU\" ensures that flights that meet
either of these two options are included.\n\n")
cat("\n")

print(kable(Data_2[1:15, c(1, 14, 13, 9)],
            caption = "In this table, you can see information about the flights and destinations.",
            align = "c"))}
