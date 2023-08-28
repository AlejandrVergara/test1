pr1 <- function(x){

library(nycflights13)
library(tidyverse)
  library(knitr)
exercise <- nycflights13::flights

Data_1 <- filter(exercise, arr_delay >= "2")
Data_2 <- filter(exercise, dest == "IAH" | dest == "HOU")

cat("library(nycflights13)\n")
cat("library(tidyverse)\n")
cat("library(knitr)\n")
cat("\n")

cat("exercise <- nycflights13::flights\n")

cat("\n")

cat("Data_1 <- filter(exercise, arr_delay >= 2)\n")
cat("Data_2 <- filter(exercise, dest == \"IAH\" | dest == \"HOU\")\n")

cat("\n")

cat("# In this code, we use the OR operator (\\|) to filter out flights that are bound for Houston, either IAH or HOU. The condition dest == \"IAH\" \\| dest == \"HOU\" ensures that flights that meet either of these two options are included.\n\n")

kable(Data_1[1:10, c(1, 14, 13, 9)],
      caption = "En esta tabla puedes ver información sobre los vuelos",
      align = "c")}
