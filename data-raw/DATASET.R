## code to prepare `DATASET` dataset goes here
install.packages("pacman")
pacman::p_load(tidyverse, readr)

coral<-readr::read_csv("data-raw/ctdb_1.1.1_data.csv") %>%
  select(observation_id, access, specie_name, location_name, trait_name,
         trait_class, resource_id, standard_id, standard_unit, value, value_type) %>%
  drop_na() %>%
  filter(location_name == "Global estimate")
glimpse(coral)


usethis::use_data(coral, overwrite = TRUE)
