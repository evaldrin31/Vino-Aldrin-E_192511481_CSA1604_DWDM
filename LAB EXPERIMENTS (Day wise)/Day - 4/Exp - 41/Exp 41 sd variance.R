# ==============================================================================
# Course: CSA1604 - Data Warehousing and Data Mining
# Name: Vino Aldrin E
# Register No: 192511481
# Experiment 41 (calculation): Standard Deviation and Variance of AvgSpeed and TotalTime
# ==============================================================================
AvgSpeed <- c(78, 81, 82, 74, 83, 82, 77, 80, 70)
TotalTime <- c(39, 37, 36, 42, 35, 36, 40, 38, 46)
for (x in list(AvgSpeed = AvgSpeed, TotalTime = TotalTime)) {
  n <- length(x)
  cat("mean =", round(mean(x), 4), " sample SD =", round(sd(x), 4), " sample variance =", round(var(x), 4),
      " population SD =", round(sqrt(var(x) * (n - 1) / n), 4), " population variance =", round(var(x) * (n - 1) / n, 4), "\n")
}
