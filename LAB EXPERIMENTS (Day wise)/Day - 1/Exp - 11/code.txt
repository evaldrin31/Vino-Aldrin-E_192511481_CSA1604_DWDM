# ==============================================================================
# Course: CSA1604 - Data Warehousing and Data Mining
# Name: Vino Aldrin E
# Register No: 192511481
# Experiment 11: Data Smoothing Techniques (Bin Mean, Bin Median, Bin Boundaries)
# ==============================================================================

# AIM:
# To implement data smoothing using bin mean, bin median, and bin boundaries in R.

# Input dataset
data <- c(11, 13, 13, 15, 15, 16, 19, 20, 20, 20, 21, 21, 22, 23, 24, 30, 40, 45, 45, 45, 71, 72, 73, 75)

# Define bin size
bin_size <- 5

# Define bin breaks
bins <- seq(min(data), max(data), by = bin_size)

# (a) Smoothing by Bin Mean
bin_means <- tapply(data, cut(data, breaks = bins), mean)
print("Smoothing by Bin Mean:")
print(bin_means)

# (b) Smoothing by Bin Median
bin_medians <- tapply(data, cut(data, breaks = bins), median)
print("Smoothing by Bin Median:")
print(bin_medians)

# (c) Smoothing by Bin Boundaries
bin_boundaries <- seq(min(data), max(data) + bin_size, by = bin_size)
print("Smoothing by Bin Boundaries:")
print(bin_boundaries)
