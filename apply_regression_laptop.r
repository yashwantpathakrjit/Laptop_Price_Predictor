# Load the necessary libraries
library(dplyr)

# Read the laptop data CSV file
laptop_data <- read.csv("laptop_prices.csv")

# Convert Brand and Processor to factors
laptop_data$Brand <- as.factor(laptop_data$Brand)
laptop_data$Processor <- as.factor(laptop_data$Processor)

# Fit a linear regression model
model <- lm(Price ~ RAM + SSD + Brand + Processor, data = laptop_data)

# Print the summary of the regression model
summary(model)
