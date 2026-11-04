library(tidyverse)
library(tidycensus)

# Download tract-level median age (B01002_001) for Sarasota County, FL
sarasota_age <- get_acs(
  geography = "tract",
  variables = c(median_age = "B01002_001"),
  state = "FL",
  county = "Sarasota",
  year = 2022
)

# Save the data locally so Quarto documents don't have to re-download it
write_rds(sarasota_age, "sarasota_age.rds")
