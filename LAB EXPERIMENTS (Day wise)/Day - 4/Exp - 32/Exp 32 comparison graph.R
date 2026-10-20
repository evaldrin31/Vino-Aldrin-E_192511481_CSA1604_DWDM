# ==============================================================================
# Course: CSA1604 - Data Warehousing and Data Mining
# Name: Vino Aldrin E
# Register No: 192511481
# Experiment 32 (graph): Naive Bayes vs SVM - breast-cancer.arff, 10-fold CV
# ==============================================================================
# values from the Weka outputs
res <- rbind(NaiveBayes = c(71.68, 70.4, 71.7, 70.8), SVM = c(69.58, 67.1, 69.6, 67.7))
colnames(res) <- c("Accuracy %", "Precision x100", "Recall x100", "F-measure x100")
res
b <- barplot(res, beside = TRUE, col = c("seagreen", "tomato"), ylim = c(0, 100),
             main = "Naive Bayes vs SVM (breast-cancer.arff)", ylab = "Score", legend.text = TRUE,
             args.legend = list(x = "topright", cex = 0.8))
text(b, res, res, pos = 3, cex = 0.8)
