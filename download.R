library(tidyverse)
library(tidycensus)

options(tigris_use_cache = TRUE)

# Download tract-level median age (B01002_001) and map geometry for all US states + DC
us_tracts_age <- get_acs(
  geography = "tract",
  variables = c(median_age = "B01002_001"),
  state = c(state.abb, "DC"),
  year = 2022,
  geometry = TRUE
)

# Save the data locally so Quarto documents don't have to re-download it
write_rds(us_tracts_age, "us_tracts_age.rds", compress = "xz")
