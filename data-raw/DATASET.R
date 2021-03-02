## code to prepare `DATASET` dataset goes here
# Use pacman package to load the necessary packages used to wrangle the data
install.packages("pacman")
pacman::p_load(tidyverse, readr)

# Read in and select some columns of the data, drop missing values
coral<-readr::read_csv("data-raw/ctdb_1.1.1_data.csv") %>%
  select(observation_id, access, specie_name, location_name, trait_name,
         trait_class, resource_id, standard_id, standard_unit, value, value_type) %>%
  drop_na() %>%
  filter(location_name == "Global estimate")

# Filter further for variables of interest
coral <- coral %>%
  select(specie_name, trait_name, value) %>%
  filter(trait_name %in% c("Ocean basin", "Range size", "Water clarity preference",
                           "Abundance world"))

# Pre-transform for pivoting by only keeping species that have observations for all 4 variables
coral <- coral %>%
  group_by(specie_name) %>%
  mutate(trait_num = n()) %>%
  filter(trait_num == 4)

# Pivot by trait_names, parse range_size as number, select final dataset variables to include
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

# Look at final dataset
glimpse(coral)

usethis::use_data(coral, overwrite = TRUE)
