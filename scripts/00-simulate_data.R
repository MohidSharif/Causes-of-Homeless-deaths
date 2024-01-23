#### Preamble ####
# Purpose: Simulates data relating to cause of deaths of homeless indivuduals
# Purpose: Downloads and saves the data from opendatatoronto
# Author: Mohid Sharif
# Date: 1 January 2024
# Contact: mohid.sharif@mail.utoronto.ca
# License: MIT
# Pre-requisites: [...UPDATE THIS...]
# Any other information needed? 


#### Workspace setup ####
#install.packages("tidyverse")
#install.packages("janitor")

library(tidyverse)
library(janitor)

#### Simulate data ####
set.seed(294)

simulated_data <-
  tibble(
    # create necessary classifications for cause of deaths of homeless
    "Cause_of_death" = c("Accident", "Sickness/Disease", "Drug Toxicity", "Homicide", "Suicide", "Other")
    ,
    # Simulate data from normal distribution for male deaths
    "Male" = rnorm(
      n = 6,
      mean = 25,
      sd = 10) |> round()
  ,
    # Simulate data from normal distribution for female deaths
    "Female" = rnorm(
      n = 6,
      mean = 25,
      sd = 10) |> round()
  )

# show data
simulated_data



