# ==============================================================================
# Course: CSA1604 - Data Warehousing and Data Mining
# Name: Vino Aldrin E
# Register No: 192511481
# Experiment 03: Data Preprocessing - Data Smoothing Techniques
# ==============================================================================

# AIM:
# To perform data preprocessing and smoothing by bin mean, bin median, and bin boundaries.

# Input dataset
data <- c(11, 13, 13, 15, 15, 16, 19, 20, 20, 20, 21, 21, 22, 23, 24, 30, 40, 45, 45, 45, 71, 72, 73, 75)

# Number of bins
bins <- 5

# Bin indices
bin_indices <- cut(data, bins)

# Smoothing by Bin Mean
mean_smooth <- tapply(data, bin_indices, mean)
print(mean_smooth)

# Smoothing by Bin Median
median_smooth <- tapply(data, bin_indices, median)
print(median_smooth)

# Smoothing by Bin Boundaries (Min and Max)
min_max_smooth <- tapply(data, bin_indices, function(x) c(min(x), max(x)))
print(min_max_smooth)
