# ==============================================================================
# Course: CSA1604 - Data Warehousing and Data Mining
# Name: Vino Aldrin E
# Register No: 192511481
# Experiment 06: Measures of Central Tendency on Pencil Inventory Data
# ==============================================================================

# AIM:
# To create a vector of pencil counts across boxes and calculate mean, median, and mode.

# Vector of pencils available in 10 different boxes
pencils <- c(9, 25, 23, 12, 11, 6, 7, 8, 9, 10)

# Calculate Mean number of pencils
mean(pencils)

# Calculate Median number of pencils
median(pencils)

# Calculate Mode (most frequent number of pencils)
mode <- names(table(pencils))[table(pencils) == max(table(pencils))]
mode
