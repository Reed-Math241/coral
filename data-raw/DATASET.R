## code to prepare `DATASET` dataset goes here
install.packages("pacman")
pacman::p_load(tidyverse, readr)

coral<-readr::read_csv("data-raw/ctdb_1.1.1_data.csv") %>%
  select(observation_id, access, specie_name, location_name, trait_name,
         trait_class, resource_id, standard_id, standard_unit, value, value_type) %>%
  drop_na() %>%
  filter(location_name == "Global estimate")
coral <- coral %>%
  select(specie_name, trait_name, value) %>%
  filter(trait_name %in% c("Ocean basin", "Range size", "Water clarity preference",
                           "Abundance world"))
coral <- coral %>%
  group_by(specie_name) %>%
  mutate(trait_num = n()) %>%
  filter(trait_num == 4)
coral <- coral %>%
  pivot_wider(names_from = trait_name,
              values_from = value) %>%
  separate(col = 'Range size', into = c("range_size", "what"),
           sep = ", ") %>%
  mutate(range_size = parse_number(range_size)) %>%
  rename(species = 'specie_name', 
         ocean_basin = 'Ocean basin', 
         water_clarity_preference = 'Water clarity preference',
         abundance_world = 'Abundance world') %>%
  select(species, ocean_basin, water_clarity_preference, abundance_world, range_size)
glimpse(coral)


usethis::use_data(coral, overwrite = TRUE)
