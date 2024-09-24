#### Preamble ####
# Purpose: Simulates data
# Author: Karen Riani
# Date: 22 September 2024
# Contact: karen.riani@mail.utoronto.ca
# Pre-requisites: None
# Any other information needed? None

#### Workspace setup ####
library(tidyverse)

#### Simulate data ####
set.seed(42)

# Set number of Records
number_of_records <- 100

# Simulating data
simulated_data <- tibble(
  occurrence_year = sample(2018:2024, number_of_records, replace = TRUE),
  race_bias = sample(c("East Asian mixed", "South Asian mixed", "Other"), number_of_records, replace = TRUE),
  primary_offence = sample(c("Assault", "Mischief", "Hate Speech", "Other"), number_of_records, replace = TRUE),
  location_type = sample(unique_location_type, number_of_records, replace = TRUE)
)

#### Write_csv
write_csv(data, file = "data/raw_data/simulated.csv")
