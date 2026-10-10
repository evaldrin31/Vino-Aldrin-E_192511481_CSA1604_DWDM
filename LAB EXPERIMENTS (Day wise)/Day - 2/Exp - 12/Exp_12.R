# ==============================================================================
# Course: CSA1604 - Data Warehousing and Data Mining
# Name: Vino Aldrin E
# Register No: 192511481
# Experiment 12: Sample Covariance and Correlation Analysis
# ==============================================================================

# AIM:
# To calculate the sample covariance and correlation between variables and compute
# the sample covariance matrix and correlation matrix for photograph preferences.

# Given photograph preference data across age groups
A <- c(18, 2, 20)
B <- c(22, 28, 10)
C <- c(20, 40, 40)

# Calculate sample covariance between B and C
cov(B, C)

# Create data frame of preferences
prefs <- data.frame(A, B, C)

# Calculate sample covariance matrix
cov(prefs)

# Calculate sample correlation between B and C
cor(B, C)

# Calculate sample correlation matrix
cor(prefs)
