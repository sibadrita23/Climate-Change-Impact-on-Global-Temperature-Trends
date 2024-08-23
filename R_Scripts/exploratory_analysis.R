install.packages("ggplot2")
library(ggplot2)
# Summary statistics
summary(temperature_data_clean)

# Histogram of temperature data
ggplot(temperature_data_clean, aes(x = Temperature)) +
  geom_histogram(binwidth = 0.2, fill = "blue", color = "black") +
  labs(title = "Distribution of Global Temperature", x = "Temperature (C)", y = "Count")

# Boxplot of temperature over years
ggplot(temperature_data_clean, aes(x = as.factor(Year), y = Temperature)) +
  geom_boxplot() +
  labs(title = "Temperature Trends Over the Years", x = "Year", y = "Temperature (C)")
