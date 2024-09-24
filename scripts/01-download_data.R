#### Preamble ####
# Purpose: Downloads and saves the data from Open Data Toronto
# Author: Karen Riani
# Date: 22 September 2024
# Contact: karen.riani@mail.utoronto.ca
# Pre-requisites: None
# Any other information needed? None

library(opendatatoronto)
library(tidyverse)
library(dplyr)

# get package
package <- show_package("hate-crimes-open-data")
package

# get all resources for this package
resources <- list_package_resources("hate-crimes-open-data")

# identify datastore resources; by default, Toronto Open Data sets datastore resource format to CSV for non-geospatial and GeoJSON for geospatial resources
datastore_resources <- filter(resources, tolower(format) %in% c('csv', 'geojson'))

# load the first datastore resource as a sample
data <- filter(datastore_resources, row_number()==1) %>% get_resource()
data

#### Save data ####
write_csv(data, "data/raw_data/raw_data.csv") 