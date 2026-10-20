# ==============================================================================
# Course: CSA1604 - Data Warehousing and Data Mining
# Name: Vino Aldrin E
# Register No: 192511481
# Experiment 29 (graph): Rule Based (JRip) vs Decision Tree (J48) - vote.arff, 10-fold CV
# ==============================================================================
# values from the Weka outputs
res <- rbind(J48 = c(96.32, 96.3, 92.24), JRip = c(95.40, 95.4, 90.37))
colnames(res) <- c("Accuracy %", "F-measure x100", "Kappa x100")
res
b <- barplot(res, beside = TRUE, col = c("steelblue", "orange"), ylim = c(0, 110),
             main = "J48 vs JRip (vote.arff)", ylab = "Score", legend.text = TRUE,
             args.legend = list(x = "topright", cex = 0.8))
text(b, res, res, pos = 3, cex = 0.8)
