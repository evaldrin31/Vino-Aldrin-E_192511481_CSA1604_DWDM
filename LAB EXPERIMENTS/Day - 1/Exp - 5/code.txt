# ==============================================================================
# Course: CSA1604 - Data Warehousing and Data Mining
# Name: Vino Aldrin E
# Register No: 192511481
# Experiment 05: Data Normalization Methods (Min-Max, Z-score, Decimal Scaling)
# ==============================================================================

# AIM:
# To transform data value 35 using Min-Max normalization, Z-Score normalization,
# and Decimal Scaling normalization in R.

# Given dataset of age
v <- c(23, 23, 27, 27, 39, 41, 47, 49, 50, 52, 54, 54, 56, 57, 58, 58, 60, 61)

# (i) Min-Max Normalization onto range [0, 1]
min <- 0
max <- 1
min_max <- ((35 - min(v)) / (max(v) - min(v)))
print(min_max)

# (ii) Z-Score Normalization using mean and standard deviation (s = 12.94)
m <- mean(v)
s <- 12.94
z_score <- (35 - m) / s
print(z_score)

# (iii) Normalization by Decimal Scaling
m <- 35
j <- max(m) < 1
decimal_scaling <- m / 10^j
print(decimal_scaling)
