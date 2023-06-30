# GALAH WORKSHOP run sheet

# install galah & load

# get the total count

# search_taxa() & galah_identify

# show_all() & search_all()

# show_values() & search_values()

# galah_filter()

# galah_group_by()

# Find the number of peron's tree frog observations since 2020, grouped by basis of record
# Find the number of frilled-neck lizard observations by state/territory
# Find the top 2 families of passerine birds with the most counts in each year since 2020

# atlas_occurrences() & galah_config()

ggplot() +
  geom_sf(data = ozmaps::ozmap_country, fill = "white") +
  geom_point(data = data)

# galah_apply_profile()

# atlas_species()

# switching atlases

library(galah)

search_all(assertions, 'date')

galah_call() |>
  galah_identify("Chlamydosaurus kingii") |>
  # galah_filter(year > 2020) |>
  galah_group_by(cl22) |>
  atlas_counts()

galah_call() |>
  galah_identify("passeriformes") |>
  galah_filter(year > 2020) |>
  galah_group_by(family, year) |>
  atlas_counts(limit = 2)
