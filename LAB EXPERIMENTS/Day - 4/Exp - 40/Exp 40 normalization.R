# ==============================================================================
# Course: CSA1604 - Data Warehousing and Data Mining
# Name: Vino Aldrin E
# Register No: 192511481
# Experiment 40 (calculation): Normalization of Strike Rates
# ==============================================================================
v <- c(100, 70, 60, 90, 90)
minmax <- (v - min(v)) / (max(v) - min(v))
z <- (v - mean(v)) / sd(v)
mad_s <- mean(abs(v - mean(v)))
z_mad <- (v - mean(v)) / mad_s
j <- ceiling(log10(max(abs(v)) + 1))
dec <- v / 10^j
cat("mean =", mean(v), " sd =", round(sd(v), 4), " mean absolute deviation =", mad_s, " j =", j, "\n")
data.frame(value = v, minmax = round(minmax, 4), zscore = round(z, 4), z_mad = round(z_mad, 4), decimal = dec)
