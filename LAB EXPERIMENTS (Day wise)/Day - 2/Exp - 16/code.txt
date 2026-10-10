# ==============================================================================
# Course: CSA1604 - Data Warehousing and Data Mining
# Name: Vino Aldrin E
# Register No: 192511481
# Experiment 16: Histogram Plot with Custom Bins on AirPassengers Dataset
# ==============================================================================

# AIM:
# To create a histogram for the AirPassengers dataset starting at 100 on the x-axis
# with custom bin widths of 150 up to 700.

# Load AirPassengers dataset
data <- AirPassengers

# Define custom break intervals
breaks <- seq(100, 700, by = 150)

# Generate Histogram
hist(data,
     breaks = breaks,
     main = "Histogram of AirPassengers",
     xlab = "Passengers")
