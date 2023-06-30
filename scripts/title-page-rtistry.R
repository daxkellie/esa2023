# Title page Rtistry

# install.packages("flametree")
library(flametree)

# pick some colours
shades <- c("#fde5ce", "#A8763E", "#536e4e", "#f3e3e2")

# data structure defining the trees
dat <- flametree_grow(time = 10, trees = 12)

# draw the plot
dat %>% 
  flametree_plot(
    background = "antiquewhite",
    palette = shades, 
    style = "nativeflora"
  )

ggplot2::ggsave(file = here::here("images", "title-trees.png"),
                width = 20,
                height = 10)
