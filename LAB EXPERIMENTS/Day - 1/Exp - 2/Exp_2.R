# ==============================================================================
# Course: CSA1604 - Data Warehousing and Data Mining
# Name: Vino Aldrin E
# Register No: 192511481
# Experiment 02: Statistical Measures of Central Tendency and Dispersion
# ==============================================================================

# AIM:
# To calculate the mean, median, mode, range, and quartiles (Q1, Q3) for the given
# age attribute values.

# Age values in increasing order
age <- c(13, 15, 16, 16, 19, 20, 20, 21, 22, 22, 25, 25, 25, 25, 30, 33, 33, 35, 35, 35, 35, 36, 40, 45, 46, 52, 70)

# Calculate Mean
mean(age)

# Calculate Median
median(age)

# Calculate Mode (most frequently occurring values)
mode_age <- names(table(age))[table(age) == max(table(age))]
mode_age

# Calculate Range
range(age)

# Calculate First Quartile (Q1 - 25th percentile)
quantile(age, 0.25)

# Calculate Third Quartile (Q3 - 75th percentile)
quantile(age, 0.75)
