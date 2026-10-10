# ==============================================================================
# Course: CSA1604 - Data Warehousing and Data Mining
# Name: Vino Aldrin E
# Register No: 192511481
# Experiment 17: Multiple Lines in Line Chart Using Single Plot Function
# ==============================================================================

# AIM:
# To plot multiple line series (mpg and qsec) on a single plot using the mtcars dataset.

# Plot the first series (mpg)
plot(mtcars$mpg, type = "l", col = "blue",
     ylab = "Values", xlab = "Index",
     main = "MPG and QSEC Line Chart")

# Add the second series (qsec)
lines(mtcars$qsec, col = "red")

# Add legend to differentiate series
legend("topright", legend = c("mpg", "qsec"),
       col = c("blue", "red"), lty = 1)
