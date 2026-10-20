# ==============================================================================
# Course: CSA1604 - Data Warehousing and Data Mining
# Name: Vino Aldrin E
# Register No: 192511481
# Experiment 25 (graph): Diabetes Trend for Different Age Groups
# ==============================================================================
# Data: diabetes.csv used in the Weka experiment
d <- read.csv("C:/Users/Vino Aldrin/Desktop/CSA1604/LAB EXPERIMENTS/Day - 3/Exp - 25/diabetes.csv")
str(d)
model <- lm(Glucose ~ Age, data = d)
coef(model)
d$AgeGroup <- cut(d$Age, breaks = c(20, 35, 50, 75), labels = c("21-35", "36-50", "51-75"))
pct <- tapply(d$Diabetes == "Yes", d$AgeGroup, mean) * 100
round(pct, 1)
tapply(d$Glucose, d$AgeGroup, mean)
par(mfrow = c(1, 2))
plot(d$Age, d$Glucose, pch = 19, col = ifelse(d$Diabetes == "Yes", "red", "blue"),
     main = "Glucose vs Age", xlab = "Age", ylab = "Glucose")
abline(model, lwd = 2)
abline(h = 140, lty = 2, col = "gray")
legend("topleft", c("Diabetes = Yes", "Diabetes = No"), col = c("red", "blue"), pch = 19, cex = 0.8)
b <- barplot(pct, col = "tomato", ylim = c(0, 110), main = "% Diabetic by Age Group",
             xlab = "Age Group", ylab = "% Diabetic")
text(b, pct, paste0(round(pct), "%"), pos = 3)
