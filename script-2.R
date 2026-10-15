library(tidyverse)

diamonds_plot <- ggplot(diamonds, aes(x = cut, y = price, fill = cut)) +
  geom_violin(alpha = 0.85, color = "white", linewidth = 0.4) +
  geom_boxplot(width = 0.12, outlier.shape = NA, alpha = 0.8, color = "#263238") +
  scale_fill_viridis_d(option = "D", end = 0.85) +
  scale_y_log10(labels = scales::dollar_format()) +
  labs(
    title = "Diamond prices by cut",
    subtitle = "Violin shapes show the price distribution; boxes mark the middle half",
    x = NULL,
    y = "Price (USD, logarithmic scale)",
    fill = "Cut"
  ) +
  theme_minimal(base_size = 13) +
  theme(
    plot.title = element_text(face = "bold"),
    legend.position = "none",
    panel.grid.minor = element_blank()
  )

ggsave(
  filename = "diamonds-2.png",
  plot = diamonds_plot,
  width = 10,
  height = 6,
  dpi = 300,
  bg = "white"
)
