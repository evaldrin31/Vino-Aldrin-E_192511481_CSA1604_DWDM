# ==============================================================================
# Course: CSA1604 - Data Warehousing and Data Mining
# Name: Vino Aldrin E
# Register No: 192511481
# Experiment 20: Outlier Detection Using Boxplot for Tennis Player Scores
# ==============================================================================

# AIM:
# To visualize the distribution of points scored by tennis players and detect
# outliers using boxplot visualization.

# Points scored by tennis players
scores <- c(15, 18, 20, 22, 19, 30, 28, 40, 23, 21)

# Generate Boxplot for Outlier Detection
boxplot(scores,
        main = "Tennis Player Scores - Outlier Detection",
        ylab = "Scores",
        col = "orange")
