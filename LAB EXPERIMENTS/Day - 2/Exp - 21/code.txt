# ==============================================================================
# Course: CSA1604 - Data Warehousing and Data Mining
# Name: Vino Aldrin E
# Register No: 192511481
# Experiment 21: Scatterplot and Bar Chart Analysis of Blood Pressure by Age Group
# ==============================================================================

# AIM:
# To analyze which age group is affected by blood pressure using a scatterplot and
# bar chart in R.

# Sample diabetes dataset
data <- data.frame(
  Age = c(25, 30, 35, 40, 45, 50, 55, 60, 65, 70, 28, 33, 48, 52, 58, 62),
  BloodPressure = c(70, 72, 75, 78, 80, 85, 88, 90, 92, 95, 68, 74, 82, 87, 89, 94)
)

# (a) Scatterplot: Blood Pressure vs Age
plot(data$Age, data$BloodPressure,
     main = "Blood Pressure vs Age",
     xlab = "Age",
     ylab = "Blood Pressure",
     pch = 19,
     col = "blue")

# Create age groups
data$AgeGroup <- cut(
  data$Age,
  breaks = c(20, 30, 40, 50, 60, 80),
  labels = c("20-30", "31-40", "41-50", "51-60", "61-80")
)

# Calculate average blood pressure per age group
avg_bp <- tapply(data$BloodPressure, data$AgeGroup, mean)

# (b) Bar Chart: Average Blood Pressure by Age Group
barplot(avg_bp,
        main = "Average Blood Pressure by Age Group",
        xlab = "Age Group",
        ylab = "Average Blood Pressure",
        col = "lightgreen")
