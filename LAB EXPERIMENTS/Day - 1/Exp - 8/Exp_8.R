# ==============================================================================
# Course: CSA1604 - Data Warehousing and Data Mining
# Name: Vino Aldrin E
# Register No: 192511481
# Experiment 08: Equal-Frequency (Equi-Depth) Partitioning and Histogram Plot
# ==============================================================================

# AIM:
# To partition student model exam marks into 3 bins using equal-frequency partitioning
# and plot the distribution using a histogram.

# Student exam marks data
marks <- c(55, 60, 71, 63, 55, 65, 50, 55, 58, 59, 61, 63, 65, 67, 71, 72, 75)

# Number of bins
num_bins <- 3

# Partition into equal frequency bins
bins_eq_frequency <- cut(marks, breaks = num_bins, labels = FALSE)

# Plot histogram for equal-frequency partitioning
hist(marks, breaks = num_bins, col = "lightblue", xlab = "Marks", main = "Equal-Frequency (Equi-Depth) Partitioning")
