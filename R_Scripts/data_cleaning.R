install.packages("dplyr")
library(dplyr)
# Remove rows with missing values
temperature_data_clean <- temperature_data %>%
  filter(!is.na(Temperature))

# Convert Date column to Date type
temperature_data_clean$Date <- as.Date(temperature_data_clean$Date, format = "%Y-%m-%d")

# Display summary statistics to check for outliers
summary(temperature_data_clean)

# Removing outliers using IQR method
Q1 <- quantile(temperature_data_clean$Temperature, 0.25)
Q3 <- quantile(temperature_data_clean$Temperature, 0.75)
IQR <- Q3 - Q1
temperature_data_clean <- temperature_data_clean %>%
  filter(Temperature > (Q1 - 1.5 * IQR) & Temperature < (Q3 + 1.5 * IQR))
