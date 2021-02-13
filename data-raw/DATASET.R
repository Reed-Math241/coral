## code to prepare `DATASET` dataset goes here
install.packages(pacman)
pacman::p_load(tidyverse, readr)

coral<-readr::read_csv("ctdb_1.1.1_data.csv") %>%
  select(observation_id, specie_id, specie_name, location_name, 
         resource_id, standard_id, standard_unit) %>%
  drop_na() %>%
  filter(location_name == "Global estimate")

usethis::use_data(coral, overwrite = TRUE)
