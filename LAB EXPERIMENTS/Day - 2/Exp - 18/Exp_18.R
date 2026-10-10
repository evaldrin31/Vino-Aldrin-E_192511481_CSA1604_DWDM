# ==============================================================================
# Course: CSA1604 - Data Warehousing and Data Mining
# Name: Vino Aldrin E
# Register No: 192511481
# Experiment 18: Linear Regression Modeling and Prediction (Mortality vs Hardness)
# ==============================================================================

# AIM:
# To examine linear relation between mortality and hardness, fit a linear regression
# model, and predict mortality for hardness = 88.

# Input dataset for water hardness and mortality
hardness <- c(30, 40, 50, 60, 70, 80, 90, 100)
mortality <- c(150, 140, 135, 130, 128, 125, 123, 120)

data <- data.frame(hardness, mortality)

# Plot scatter plot to observe linear relationship
plot(data$hardness, data$mortality,
     main = "Mortality vs Hardness",
     xlab = "Hardness",
     ylab = "Mortality",
     col = "blue",
     pch = 19)

# Fit Linear Regression Model
model <- lm(mortality ~ hardness, data = data)
summary(model)

# Add regression line to the plot
abline(model, col = "red", lwd = 2)

# Predict mortality for hardness = 88
predict(model, newdata = data.frame(hardness = 88))
