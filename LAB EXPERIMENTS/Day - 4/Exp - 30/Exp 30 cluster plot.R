# ==============================================================================
# Course: CSA1604 - Data Warehousing and Data Mining
# Name: Vino Aldrin E
# Register No: 192511481
# Experiment 30 (cluster plot): Mall Customer Segments from Weka SimpleKMeans (k = 5)
# ==============================================================================
# cluster of each customer = Weka output saved as mall customers clustered.arff
f <- "C:/Users/Vino Aldrin/Desktop/CSA1604/LAB EXPERIMENTS/Day - 4/Exp - 30/mall customers clustered.arff"
lines <- readLines(f, warn = FALSE)
d <- read.csv(text = lines[(grep("^@data", lines) + 1):length(lines)], header = FALSE,
              col.names = c("Inst", "CustomerID", "Gender", "Age", "Income", "Spending", "Cluster"))
seg <- c(cluster0 = "Careful", cluster1 = "Young target", cluster2 = "Senior target",
         cluster3 = "Usual", cluster4 = "Priority")
cols <- c(cluster0 = "blue", cluster1 = "red", cluster2 = "darkgreen", cluster3 = "orange", cluster4 = "purple")
table(d$Cluster)
cen <- aggregate(cbind(Income, Spending) ~ Cluster, data = d, FUN = mean)
cen
plot(d$Income, d$Spending, pch = 19, cex = 1.6, col = cols[d$Cluster], ylim = c(0, 118),
     xlab = "Annual Income (k$)", ylab = "Spending Score (1-100)",
     main = "Mall Customer Segments (Weka SimpleKMeans, k = 5)")
points(cen$Income, cen$Spending, pch = 4, cex = 3, lwd = 3)
legend("top", paste(names(seg), "-", seg), col = cols, pch = 19, cex = 0.8, ncol = 3, bg = "white")
