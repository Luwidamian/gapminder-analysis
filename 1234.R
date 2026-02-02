# Load libraries
library(gapminder)
library(dplyr)
library(ggplot2)

# 1. Clean/Filter Data
# We focus on the most recent year in the dataset to keep it simple
data_2007 <- gapminder %>% 
  filter(year == 2007)

# 2. Create a Visualization
plot <- ggplot(data_2007, aes(x = gdpPercap, y = lifeExp, size = pop, color = continent)) +
  geom_point(alpha = 0.7) +
  scale_x_log10() + # Log scale makes the trend visible
  labs(title = "Health vs. Wealth (2007)",
       x = "GDP per Capita (log scale)",
       y = "Life Expectancy") +
  theme_minimal()

# 3. Save the Output
# This proves the code works and generates the same result for everyone
ggsave("output/final_plot.png", plot = plot)
1
