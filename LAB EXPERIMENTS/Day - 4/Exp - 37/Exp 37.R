# ==============================================================================
# Course: CSA1604 - Data Warehousing and Data Mining
# Name: Vino Aldrin E
# Register No: 192511481
# Experiment 37: Partitioning Marks into Bins (Equal-Frequency, Equal-Width, Clustering) and Histogram
# ==============================================================================
# AIM:
# To partition the model exam marks into three bins using equal-frequency,
# equal-width and clustering methods and plot the data points using histograms.
marks <- c(55, 60, 71, 63, 55, 65, 50, 55, 58, 59, 61, 63, 65, 67, 71, 72, 75)
marks <- sort(marks)
marks
# (a) Equal-frequency (equi-depth) partitioning - 3 bins
ef <- split(marks, ceiling(seq_along(marks) / ceiling(length(marks) / 3)))
ef
# (b) Equal-width partitioning - 3 bins
w <- (max(marks) - min(marks)) / 3
w
ew_breaks <- seq(min(marks), max(marks), length.out = 4)
ew <- split(marks, cut(marks, breaks = ew_breaks, include.lowest = TRUE))
ew
# (c) Clustering (k-means, 3 clusters)
set.seed(1)
km <- kmeans(marks, centers = 3, nstart = 25)
cl <- split(marks, km$cluster)
cl <- cl[order(sapply(cl, min))]
names(cl) <- 1:3
cl
# Histograms
rng <- function(b) sapply(b, function(x) paste0(min(x), "-", max(x)))
par(mfrow = c(1, 3))
barplot(sapply(ef, length), names.arg = rng(ef), space = 0, col = "orange",
        main = "Equal-Frequency", xlab = "Marks", ylab = "Frequency")
hist(marks, breaks = ew_breaks, col = "steelblue",
     main = "Equal-Width", xlab = "Marks", labels = TRUE)
barplot(sapply(cl, length), names.arg = rng(cl), space = 0, col = "seagreen",
        main = "Clustering (k-means)", xlab = "Marks", ylab = "Frequency")
