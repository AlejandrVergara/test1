Ex4 <- function(x){


  Data_8 <- flights %>% mutate(
    dep_time_mins = (dep_time %/% 100) * 60 + dep_time %% 100,
    sched_dep_time_mins = (sched_dep_time %/% 100) * 60 + sched_dep_time %% 100)

    Data_9 <- Data_8 %>% mutate(
      arr_dep_time_diff = arr_time - dep_time_mins
    ) %>%
      filter(!is.na(air_time) & !is.na(arr_dep_time_diff)) %>%
      select(air_time,arr_time, arr_dep_time_diff)

cat("\n")
cat("5.5.2 Exercises:")
cat("\n")
cat("1\n")
cat(" Data_8 <- flights %>% mutate(
    dep_time_mins = (dep_time %/% 100) * 60 + dep_time %% 100,
    sched_dep_time_mins = (sched_dep_time %/% 100) * 60 + sched_dep_time %% 100\n")
cat("\n")
cat("\n")
cat(
"In this part, you create a new dataset called Data_8. You use mutate()
to add two new columns: dep_time_mins and sched_dep_time_mins.
These columns represent the departure time and the scheduled departure time converted to minutes since midnight.
The calculation (dep_time %/% 100)*60+dep_time %% 100 converts the hour and minutes to total minutes.\n")
cat("\n")
print(kable(Data_8[1:10, c(1, 14, 20, 21)],
      caption = "In this table you can see the information in minutes",
      align = "c"))
cat("\n")
cat("2\n")
cat("Data_9 <- Data_8 %>% mutate(
  arr_dep_time_diff = arr_time - dep_time_mins
) %>%
filter(!is.na(air_time) & !is.na(arr_dep_time_diff)) %>%
select(air_time,arr_time, arr_dep_time_diff)\n")
cat("\n")
cat("\n")
cat(
"In this section, you create Data_9. you use mutate() to calculate the difference between arrival
and departure times converted into minutes (arr_time - dep_time_mins). Then,
you use filter() to remove rows that have missing values in air_time or in the time difference
between arrival and departure. Finally, select() is used to have only the two columns
air_time (flight time) and arr_dep_time_diff (difference between arrival and departure time in minutes).\n")
cat("\n")

print(kable(Data_9[1:10,],
            caption = "In this table you can see flight information",
            align = "c"))}

