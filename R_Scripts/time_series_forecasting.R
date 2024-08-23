install.packages("forecast")
library(forecast)
# Prepare data for time-series analysis
temperature_ts <- ts(temperature_data_clean$Temperature, start = c(1880), frequency = 12)

# ARIMA model
fit <- auto.arima(temperature_ts)

# Forecast the next 10 years
forecast_data <- forecast(fit, h = 10)

# Plot the forecast
plot(forecast_data, main = "Temperature Forecast for the Next 10 Years")
