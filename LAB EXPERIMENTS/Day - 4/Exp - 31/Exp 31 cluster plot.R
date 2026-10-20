# ==============================================================================
# Course: CSA1604 - Data Warehousing and Data Mining
# Name: Vino Aldrin E
# Register No: 192511481
# Experiment 31 (cluster plot): Employee K-Means, k = 2 and k = 3 (clusters from Weka)
# ==============================================================================
d <- read.csv("C:/Users/Vino Aldrin/Desktop/CSA1604/LAB EXPERIMENTS/Day - 4/Exp - 31/employee.csv")
# cluster numbers as given by Weka SimpleKMeans (they match the Weka centroids)
d$k2 <- c(1, 0, 0, 0, 1, 1)
d$k3 <- c(2, 2, 0, 0, 1, 1)
d
aggregate(cbind(Age, Salary, Credit) ~ k2, data = d, FUN = mean)
aggregate(cbind(Age, Salary, Credit) ~ k3, data = d, FUN = mean)
cols <- c("blue", "red", "darkgreen")
par(mfrow = c(1, 2))
for (k in c("k2", "k3")) {
  plot(d$Salary, d$Credit, pch = 19, cex = 2.2, col = cols[d[[k]] + 1],
       xlim = c(145000, 205000), ylim = c(20, 80), xlab = "Salary", ylab = "Credit",
       main = paste("K-Means", ifelse(k == "k2", "k = 2", "k = 3")))
  text(d$Salary, d$Credit, d$EmployeID, pos = 4, offset = 0.8, cex = 0.8)
  legend("topleft", paste0("cluster", 0:(max(d[[k]]))), col = cols, pch = 19, cex = 0.8)
}
