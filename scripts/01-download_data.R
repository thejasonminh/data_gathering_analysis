  #### Preamble ####
# Purpose: Downloads and saves the Feb 16 2023 APOD and to write it on Quarto
# Author: Jason Ngo
# Data: 16 February 2023
# Contact: jason.ngo@mail.utoronto.ca
# License: MIT
# Pre-requisites: [...UPDATE THIS...]
# Any other information needed? The APOD URL


#### Workspace setup ####
library(tidyverse)
library(httr)
library(xml2)

#### Identify URL ####
NASA_APOD_20230216 <- GET("https://api.nasa.gov/planetary/apod?api_key=DEMO_KEY&date=2023-02-16")

#### Save Data ####
content(NASA_APOD_20230216)$url |>
  download.file(destfile = "~/GitHub/data_gathering_analysis/inputs/NASA_APOD_20230216.jpg")

#### Save data ####
# [...UPDATE THIS...]
# change the_raw_data to whatever name you assigned when you downloaded it.
write_csv(the_raw_data, "inputs/data/raw_data.csv") 

         