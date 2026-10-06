# ==============================================================================
# Course: CSA1604 - Data Warehousing and Data Mining
# Name: Vino Aldrin E
# Register No: 192511481
# Experiment 10: First and Third Quartiles (Q1, Q3) Calculation for Age Data
# ==============================================================================

# AIM:
# To compute roughly the first quartile (Q1) and third quartile (Q3) for age data tuples.

# Age values in increasing order
age <- c(13, 15, 16, 16, 19, 20, 20, 21, 22, 22, 25, 25, 25, 25, 30, 33, 33, 35, 35, 35, 35, 36, 40, 45, 46, 52, 70)

# Calculate First Quartile (Q1 - 25th Percentile)
quantile(age, 0.25)

# Calculate Third Quartile (Q3 - 75th Percentile)
quantile(age, 0.75)
