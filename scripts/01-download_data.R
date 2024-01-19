#### Preamble ####
# Purpose: Downloads and saves the data from [...UPDATE THIS...]
# Author: Rohan Alexander [...UPDATE THIS...]
# Date: 11 February 2023 [...UPDATE THIS...]
# Contact: rohan.alexander@utoronto.ca [...UPDATE THIS...]
# License: MIT
# Pre-requisites: [...UPDATE THIS...]
# Any other information needed? [...UPDATE THIS...]


#### Workspace setup ####
library(opendatatoronto)
library(tidyverse)
# [...UPDATE THIS...]

#### Download data ####
package <- show_package("a7ae08f3-c512-4a88-bb3c-ab40eca50c5e")
package

resources <- list_package_resources("a7ae08f3-c512-4a88-bb3c-ab40eca50c5e")

datastore_resources <- filter(resources, tolower(format) %in% c('csv'))


homeless_deaths <- filter(datastore_resources, row_number()==3) %>% get_resource()


#### Save data ####
# [...UPDATE THIS...]
# change the_raw_data to whatever name you assigned when you downloaded it.
write_csv(homeless_deaths, "~/causes_of_homeless_deaths/inputs/data/unedited_data.csv")

         
