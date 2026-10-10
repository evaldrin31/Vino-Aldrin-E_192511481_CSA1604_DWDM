# ==============================================================================
# Course: CSA1604 - Data Warehousing and Data Mining
# Name: Vino Aldrin E
# Register No: 192511481
# Experiment 13: Data Discretization, Smoothing, and Histogram Plot
# ==============================================================================

# AIM:
# To partition All Electronics price data into equal-frequency bins, perform data
# smoothing by bin mean and bin boundaries, and plot a histogram.

# Given price dataset
price <- c(1, 1, 5, 5, 5, 5, 5, 8, 8, 10, 10, 10, 10, 12, 14, 14, 14, 
           15, 15, 15, 15, 15, 15, 18, 18, 18, 18, 18, 18, 18, 18, 20, 
           20, 20, 20, 20, 20, 20, 20, 21, 21, 21, 21, 25, 25, 25, 
           25, 25, 28, 28, 30, 30, 30)

# (i) Equal-frequency partitioning (3 bins)
n <- length(price)
bin_size <- n / 3
bins <- split(price, ceiling(seq_along(price) / bin_size))
bins

# (ii) Smoothing
# A. Smoothing by Bin Mean
bin_means <- lapply(bins, function(b) rep(mean(b), length(b)))
bin_means

# B. Smoothing by Bin Boundary
bin_boundary <- lapply(bins, function(b) {
  lower <- min(b)
  upper <- max(b)
  sapply(b, function(x) if (abs(x - lower) < abs(x - upper)) lower else upper)
})
bin_boundary

# Plot Histogram of Prices
hist(price,
     main = "Price Histogram",
     xlab = "Price",
     ylab = "Frequency")
