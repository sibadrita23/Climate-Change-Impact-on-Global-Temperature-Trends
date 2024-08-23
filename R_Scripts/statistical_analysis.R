install.packages("lmtest")
library(lmtest)
# Linear regression model to predict temperature over time
model <- lm(Temperature ~ Year, data = temperature_data_clean)

# Summary of the model
summary(model)

# Plot regression line
ggplot(temperature_data_clean, aes(x = Year, y = Temperature)) +
  geom_point() +
  geom_smooth(method = "lm", color = "red") +
  labs(title = "Linear Regression of Temperature over Time", x = "Year", y = "Temperature (C)")
