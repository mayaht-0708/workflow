total <- sum(1:10)
print(total)

library(tidyverse)

diamonds_plot <- ggplot(diamonds, aes(x = carat, y = price, color = cut)) +
  geom_point(alpha = 0.35, size = 1) +
  scale_color_viridis_d(option = "C", end = 0.9) +
  labs(
    title = "The value of a diamond",
    subtitle = "Price rises with carat, with variation across cut quality",
    x = "Carat",
    y = "Price (USD)",
    color = "Cut"
  ) +
  theme_minimal(base_size = 13) +
  theme(
    plot.title = element_text(face = "bold"),
    legend.position = "bottom"
  ) +
  guides(color = guide_legend(nrow = 1))

ggsave(
  filename = "diamonds-1.png",
  plot = diamonds_plot,
  width = 10,
  height = 6,
  dpi = 300,
  bg = "white"
)
