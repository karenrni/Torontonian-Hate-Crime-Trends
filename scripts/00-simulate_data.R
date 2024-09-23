#### Preamble ####
# Purpose: Simulates data
# Author: Karen Riani
# Date: 19 September 2024
# Contact: karen.riani@mail.utoronto.ca
# Pre-requisites: None
# Any other information needed? None

#### Workspace setup ####
library(tidyverse)


#### Simulate data ####
set.seed(304)

# Define the start and end date
start_date <- as.Date("2018-01-01")
end_date <- as.Date("2023-12-31")

# Set the number of random dates you want to generate
number_of_dates <- 100

data <-
  tibble(
    dates = as.Date(
      runif(
        n = number_of_dates,
        min = as.numeric(start_date),
        max = as.numeric(end_date)
      ),
      origin = "1970-01-01"
    ),
    number_of_marriage = rpois(n = number_of_dates, lambda = 15)
  )


#### Write_csv
write_csv(data, file = "data/raw_data/simulated.csv")
