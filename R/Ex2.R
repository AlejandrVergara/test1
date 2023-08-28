Ex2 <- function(x){



Data_4 <- flights %>% arrange(desc(arr_delay))
Data_3 <- flights %>% arrange(desc(is.na(dep_time)))
Data_5 <- flights %>% mutate(speed = distance / air_time) %>% arrange(desc(speed))
Data_6 <- flights %>% arrange(desc(distance))
Data_7 <- flights %>% arrange(distance)
cat("\n")
cat("5.3.1 Exercises:")
cat("\n")
cat("1\n")
cat(
  "Data_3 <- flights %>% arrange(desc(is.na(dep_time)))\n")
cat("\n")
cat(
"#is.na(dep_time) is used as a sorting criterion. is.na() is a function that evaluates
whether each value in the dep_time column is a missing value (NA). When sorting according to this evaluation,
flights with missing values in the output time (dep_time) will be placed at the top of the resulting data set.\n")

cat("\n")

print(kable(Data_3[1:10, c(1, 4, 14, 13, 9)],
      caption = "In this table you can see flight with missing values",
      align = "c"))
cat("\n")
cat("2\n")
cat("\n")
cat(
  "Data_4 <- flights %>% arrange(desc(arr_delay))\n")
cat("\n")
cat("\n")
cat(
"# In this line, another dataset called Data_4 is generated.
arrange() is used to sort the flights based on the arr_delay column,
which represents the delay in arrival. By adding desc(arr_delay),
the instruction is given that flights with longer delays will be placed at the top of the list.\n")


print(kable(Data_4[1:10, c(1, 14, 13, 9)],
      caption = "In this table you can see the flights sorted by delays",
      align = "c"))
cat("\n")
cat("3\n")
cat("\n")
cat("Data_5 <- flights %>% mutate(speed = distance / air_time) %>% arrange(desc(speed))\n")
cat("\n")
cat(
"#Mutate() is used to add a new column named speed to the dataset.
The speed column calculates the speed by dividing the distance by the flight time (air_time).
Then, using arrange(), the flights are sorted based on the new speed column in descending order.
The fastest flights will appear first in the list.\n")

cat("\n")
print(kable(Data_5[1:10, c(1, 16, 8, 20)],
      caption = "In this table you can see the flights sorted by speed",
      align = "c"))
cat("\n")
cat("4.1\n")
cat("\n")

cat("Data_6 <- flights %>% arrange(desc(distance))")
cat("\n")
cat(
"#In this line, Data_6 is created. arrange() is used to arrange the flights by distance traveled
in descending order. This shows the flights that traveled the longest distances first.\n")
cat("\n")

print(kable(Data_6[1:10, c(1, 14, 13, 16)],
      caption = "In this table you can see which flights traveled the longest distances first",
      align = "c"))
cat("\n")
cat("4.2\n")
cat("\n")

cat("Data_7 <- flights %>% arrange(distance)\n")
cat("\n")
cat(
"#Finally, Data_7 is created. arrange() is used to sort the flights
by distance traveled in ascending order.This places flights with shorter distances
at the beginning of the data set.\n")
cat("\n")

print(kable(Data_7[1:10, c(1, 14, 13, 16)],
      caption = "In this table you can see which flights traveled the shortest distances first",
      align = "c"))

}
