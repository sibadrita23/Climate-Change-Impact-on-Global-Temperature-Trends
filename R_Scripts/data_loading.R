# Install packages if not already installed
install.packages("ggplot2")
install.packages("dplyr")
install.packages("readr")

# Load libraries
library(readr)
# Load the global temperature data
temperature_data <- read_csv("../Data/global_temperature_data.csv")

# Display first few rows of the data
head(temperature_data)

# Structure of the dataset
str(temperature_data)

