#### Preamble ####
# Purpose: Downloads and saves the data from opendatatoronto
# Author: Mohid Sharif
# Date: 1 January 2024
# Contact: mohid.sharif@mail.utoronto.ca
# License: MIT
# Pre-requisites: [...UPDATE THIS...]
# Any other information needed? 


#### Workspace setup ####
library(opendatatoronto)
library(tidyverse)

#### Download data ####
package <- show_package("a7ae08f3-c512-4a88-bb3c-ab40eca50c5e")
package

# Obtain the package resource
resources <- list_package_resources("a7ae08f3-c512-4a88-bb3c-ab40eca50c5e")

# Filter the csv files
datastore_resources <- filter(resources, tolower(format) %in% c('csv'))

# Extract the csv file of interest
homeless_deaths <- filter(datastore_resources, row_number()==3) %>% get_resource()


#### Save data ####
write_csv(homeless_deaths, "~/causes_of_homeless_deaths/inputs/data/unedited_data.csv")

         
