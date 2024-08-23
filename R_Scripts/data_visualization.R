install.packages("plotly")
library(plotly)
# Time-series line plot for temperature trends
p <- ggplot(temperature_data_clean, aes(x = Date, y = Temperature)) +
  geom_line(color = "blue") +
  labs(title = "Global Temperature Trends Over Time", x = "Year", y = "Temperature (C)") +
  theme_minimal()

# Convert the plot to an interactive plot using plotly
ggplotly(p)

# Save plot as HTML
htmlwidgets::saveWidget(ggplotly(p), file = "../Reports/temperature_trends_plot.html")
