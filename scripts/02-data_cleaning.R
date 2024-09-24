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
  mutate(OFFENCE_GROUP = case_when(
    PRIMARY_OFFENCE %in% c("Assault", "Assault With a Weapon", "Assault Causing Bodily Harm", 
                           "Aggravated Assault", "Assault Peace Officer", "Sexual Assault", "Murder") ~ "Assault-related Offenses",
    PRIMARY_OFFENCE %in% c("Mischief Under $5000", "Mischief Interfere With Property", "Mischief To Religious Property, Educational Institutions, Etc.",
                           "Mischief Over $5000", "Mischief To Data", "Arson") ~ "Mischief and Property Damage",
    PRIMARY_OFFENCE %in% c("Uttering Threats - Bodily Harm", "Uttering Threats - Property", "Criminal Harassment", "Harassing Communications") ~ "Threats and Harassment",
    PRIMARY_OFFENCE %in% c("Wilful Promotion of Hatred", "Public Incitement of Hatred", "Advocating Genocide", "Disturbing Religious Worship Or Certain Meetings") ~ "Hate-related Offenses",
    TRUE ~ "Other Offenses"
  ))

# Remove rows without racial bias 
cleaned_data <- cleaned_data %>%
  filter(RACE_BIAS != "None")

#### Save data ####
write_csv(cleaned_data, "data/analysis_data/analysis_data.csv")
