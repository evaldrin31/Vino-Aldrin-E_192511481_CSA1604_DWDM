# ==============================================================================
# Course: CSA1604 - Data Warehousing and Data Mining
# Name: Vino Aldrin E
# Register No: 192511481
# Experiment 19: Boxplot Visualization for MPG vs Number of Cylinders
# ==============================================================================

# AIM:
# To create a boxplot showing the relation between miles per gallon (mpg) and the
# number of cylinders (cyl) in the mtcars dataset.

# Generate Boxplot
boxplot(mpg ~ cyl, data = mtcars,
        main = "MPG vs Number of Cylinders",
        xlab = "Cylinders",
        ylab = "Miles Per Gallon",
        col = "lightblue")
