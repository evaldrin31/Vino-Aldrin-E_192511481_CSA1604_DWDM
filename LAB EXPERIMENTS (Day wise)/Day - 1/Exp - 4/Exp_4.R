# ==============================================================================
# Course: CSA1604 - Data Warehousing and Data Mining
# Name: Vino Aldrin E
# Register No: 192511481
# Experiment 04: Data Normalization and Visualization for Hospital Dataset
# ==============================================================================

# AIM:
# To perform min-max normalization, z-score normalization, and decimal scaling,
# and visualize age and %fat using boxplots, scatter plots, and Q-Q plots.

# Given age vector (v) and body fat vector (fat)
v <- c(23, 23, 27, 27, 39, 41, 47, 49, 50, 52, 54, 54, 56, 57, 58, 58, 60, 61)
fat <- c(9.5, 26.5, 7.8, 17.8, 31.4, 25.9, 27.4, 27.2, 31.2, 34.6, 42.5, 28.8, 33.4, 30.2, 34.1, 32.9, 41.2, 35.7)

# (i) Min-Max Normalization of value 35 onto [0, 1]
min <- 0
max <- 1
min_max <- ((35 - min(v)) / (max(v) - min(v)))
print(min_max)

# (ii) Z-score Normalization of value 35 (given standard deviation s = 12.94)
m <- mean(v)
s <- 12.94
z_score <- (35 - m) / s
print(z_score)

# (iii) Decimal Scaling Normalization of value 35
m_val <- 35
j <- max(m_val) < 1
decimal_scaling <- m_val / 10^j

# Data Visualizations:
# Boxplot for age (v) and %fat
boxplot(v, fat)

# Scatter plot for age vs %fat
plot(v, fat)

# Q-Q plot for comparing distributions of v and fat
qqplot(v, fat)
