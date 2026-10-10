# ==============================================================================
# Course: CSA1604 - Data Warehousing and Data Mining
# Name: Vino Aldrin E
# Register No: 192511481
# Experiment 15: Min-Max and Z-Score Data Normalization
# ==============================================================================

# AIM:
# To normalize the given group of data values using Min-Max normalization
# (scaled to range [0, 1]) and Z-Score normalization.

# Given data vector
x <- c(200, 300, 400, 600, 1000)

# (a) Min-Max Normalization (range 0 to 1)
min_x <- min(x)
max_x <- max(x)
minmax <- (x - min_x) / (max_x - min_x)
minmax

# (b) Z-Score Normalization
mean_x <- mean(x)
sd_x <- sd(x)
zscore <- (x - mean_x) / sd_x
zscore
