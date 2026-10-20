# ==============================================================================
# Course: CSA1604 - Data Warehousing and Data Mining
# Name: Vino Aldrin E
# Register No: 192511481
# Experiment 36 (graph): Decision Tree (J48) vs SVM - accuracy and F1 from Weka confusion matrices
# ==============================================================================
# confusion matrices from Weka (rows = actual, cols = predicted; negative, positive)
cm <- list(J48 = matrix(c(407, 108, 93, 160), 2), SVM = matrix(c(449, 123, 51, 145), 2))
f1 <- function(m) {
  acc <- sum(diag(m)) / sum(m)
  p <- m[2, 2] / sum(m[, 2]); r <- m[2, 2] / sum(m[2, ])
  pn <- m[1, 1] / sum(m[, 1]); rn <- m[1, 1] / sum(m[1, ])
  f_pos <- 2 * p * r / (p + r); f_neg <- 2 * pn * rn / (pn + rn)
  w <- (f_neg * sum(m[1, ]) + f_pos * sum(m[2, ])) / sum(m)
  round(c(Accuracy = acc, Precision_pos = p, Recall_pos = r, F1_pos = f_pos, F1_neg = f_neg, F1_weighted = w), 4)
}
res <- t(sapply(cm, f1))
res
g <- res[, c("Accuracy", "F1_weighted", "F1_pos")] * 100
b <- barplot(g, beside = TRUE, col = c("steelblue", "orange"), ylim = c(0, 100),
             names.arg = c("Accuracy %", "Weighted F1 x100", "F1 positive x100"),
             main = "J48 vs SVM (diabetes.arff)", ylab = "Score", legend.text = TRUE,
             args.legend = list(x = "topright", cex = 0.8))
text(b, g, round(g, 1), pos = 3, cex = 0.8)
