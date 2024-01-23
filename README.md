This paper contains the R project used in creating the paper "Preserving the Lives of the Homeless".

Abstract: How valuable is the life of a homeless person, and what efforts do we need to
take to preseve their lives? To answer this question I obtained and analyzed data
about causes of homeless deaths by age group and year. I found that drug abuse
was the leading cause of death among homeless people followed by sickness and
disease. By analyzing my findings I hope to identify the leading causes of death
among the homeless so we can work towards changes that will help preserve life.

Statement on LLM useage: No LLMs were used for any aspect of this work.

The repository contains three folders: inputs, outputs, and scripts which are organised as follows:

Inputs:

Data: the raw data csv files obtained from OpenDataToronto

Sketches: Sketches used in the paper

Outputs:

Paper: Quarto, a final pdf document, and a bibliography

Scripts:

00-simulate_data.R: Simulates the data to be studies in the paper

01-data_download.R: This script downloads, processes, and cleans the data obtained in the DHS final report

To Generate the paper:

Download the repository's main folder

Open causes_of_homless_deaths.Rproj in RStudio

Install libraries opendatatoronto, tidyverse, knitr, and janitor using install.packages()

Run 01-data_download.R to download the raw data

render paper.qmd to reproduce the paper
