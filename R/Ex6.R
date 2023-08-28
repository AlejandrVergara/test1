Ex6 <- function(x){

Data_10 <- flights %>%
  group_by(tailnum) %>%
  summarize(
    total_flights = n(),
    punctual_flights = sum(arr_delay <= 0, na.rm = TRUE),
    punctuality_percentage = (punctual_flights / total_flights) * 100
  ) %>%
  arrange(punctuality_percentage) %>%
  filter(!is.na(punctuality_percentage))
Data_10
cat("\n")

cat("5.7.1 Exercises:")
cat("\n")

cat("
Data_10 <- flights %>%
  group_by(tailnum) %>%
  summarize(
    total_flights = n(),
    punctual_flights = sum(arr_delay <= 0, na.rm = TRUE),
    punctuality_percentage = (punctual_flights / total_flights) * 100
  ) %>%
  arrange(punctuality_percentage) %>%
  filter(!is.na(punctuality_percentage))

Data_10\n")
cat("\n")
cat(
"#The code snippet calculates the aircraft with the poorest punctuality using the flights dataset.
Here's how it works step by step:

1.Grouping by Aircraft: The code groups the data by the unique tail numbers of aircraft (tailnum).

2.Summarizing Data: Within each group (each aircraft), the code calculates three key values:

3.total_flights: The total number of flights made by each aircraft, counted using the n() function.

4.punctual_flights: The count of flights that had punctual or early arrivals
(arrival delay less than or equal to 0), calculated using the sum()function.
The na.rm = TRUE argument ensures that missing values are ignored.

5.punctuality_percentage: The percentage of punctual flights in relation to total flights.
It's calculated by dividing punctual_flights by total_flights and then multiplying by 100.

6.Sorting and Filtering: The summarized data is sorted in ascending order based on the:
punctuality_percentage, meaning the aircraft with the worst punctuality percentages
are listed first. Then, the filter() function removes rows where punctuality_percentage
is not available (NA)

The resulting dataset, named worst_punctuality.\n")
cat("\n")
print(kable(Data_10[1:10, c(1,2,3,4)],
      caption = "In this table you can see my_DF10 information",
      align = "c"))
}
