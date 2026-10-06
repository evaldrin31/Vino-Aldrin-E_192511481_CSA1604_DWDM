# ==============================================================================
# Course: CSA1604 - Data Warehousing and Data Mining
# Name: Vino Aldrin E
# Register No: 192511481
# Experiment 07: Scatter Plot for Mobile Phones Sold vs Revenue
# ==============================================================================

# AIM:
# To plot a scatter plot with smooth curve showing relation between mobile phones sold (x) and revenue (y).

# x: Number of mobile phones sold
x <- c(4, 1, 5, 7, 10, 2, 50, 25, 90, 36)

# y: Money generated
y <- c(12, 5, 13, 19, 31, 7, 153, 72, 275, 110)

# Generate scatter plot with smooth curve
scatter.smooth(x, y)
