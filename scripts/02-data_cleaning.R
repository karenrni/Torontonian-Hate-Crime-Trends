#### Preamble ####
# Purpose: Cleans the raw marriage data into an analysis dataset
# Author: Karen Riani
# Date: 22 September 2024
# Contact: karen.riani@mail.utoronto.ca
# Pre-requisites: None
# Any other information needed? None

#### Workspace setup ####
library(tidyverse)

#### Clean data ####
raw_data <- read_csv("data/raw_data/raw_data.csv")

# Recategorize race and primary offences
cleaned_data <- data %>%
  mutate(
    race_bias_recategorized = case_when(
      str_detect(RACE_BIAS, "East/Southeast Asian") ~ "East Asian mixed",
      str_detect(RACE_BIAS, "South Asian") ~ "South Asian mixed",
      TRUE ~ "All the rest"
    ),
    primary_offence_recategorized = case_when(
      PRIMARY_OFFENCE %in% c("Assault", "Aggravated Assault") ~ "Assault",
      PRIMARY_OFFENCE %in% c("Mischief Under $5000", "Mischief Over $5000") ~ "Mischief",
      TRUE ~ "Other"
    )
  )

#### Save data ####
write_csv(cleaned_data, "data/analysis_data/analysis_data.csv")
