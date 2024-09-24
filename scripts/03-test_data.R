#### Preamble ####
# Purpose: Sanity check of the data
# Author: Karen Riani
# Date: 22 September 2024
# Contact: karen.riani@mail.utoronto.ca
# Pre-requisites: None
# Any other information needed? None

#### Workspace setup ####
library(tidyverse)

#### Test data ####
data <- read_csv("data/raw_data/simulated.csv")

# Test for NAs in specific categorical columns
any(is.na(data$RACE_BIAS))  # Check RACE_BIAS for NAs
any(is.na(data$LOCATION_TYPE))  # Check LOCATION_TYPE for NAs
any(is.na(data$PRIMARY_OFFENCE))  # Check OFFENSE_GROUP for NAs

# Test for duplicate rows
any(duplicated(data))




