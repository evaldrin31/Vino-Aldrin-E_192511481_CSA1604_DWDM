# ==============================================================================
# Course: CSA1604 - Data Warehousing and Data Mining
# Name: Vino Aldrin E
# Register No: 192511481
# Experiment 38 (decision and confusion matrix): Given Decision Tree - Height, Weight -> Gender
# ==============================================================================
height <- c(185, 190, 182, 175, 170, 165, 178, 160, 172, 168, 186, 176, 155, 181, 174, 163, 179, 158, 192, 169)
weight <- c(90, 78, 70, 85, 95, 82, 60, 55, 65, 72, 88, 81, 50, 75, 79, 58, 84, 62, 95, 68)
actual <- c("Male","Male","Male","Male","Male","Male","Female","Female","Female","Female",
            "Male","Male","Female","Male","Female","Female","Male","Female","Male","Female")
# given tree: Height > 180 -> Male, else Weight > 80 -> Male, else Female
decision <- ifelse(height > 180, "Male", ifelse(weight > 80, "Male", "Female"))
data.frame(height, weight, actual, decision)
cat("Accuracy of given tree =", mean(decision == actual) * 100, "%\n")
# confusion matrices (J48 and JRip from Weka, both 11 0 / 0 9)
cm <- matrix(c(11, 0, 0, 9), 2, dimnames = list(Actual = c("Male", "Female"), Predicted = c("Male", "Female")))
cm
par(mfrow = c(1, 2))
for (m in c("J48 (decision tree)", "JRip (rule based)")) {
  image(1:2, 1:2, t(cm[2:1, ]), col = c("white", "steelblue"), axes = FALSE,
        xlab = "Predicted", ylab = "Actual", main = paste(m, "- 100%"))
  axis(1, 1:2, colnames(cm)); axis(2, 1:2, rev(rownames(cm)))
  text(rep(1:2, each = 2), rep(2:1, 2), cm, cex = 2, font = 2)
}
