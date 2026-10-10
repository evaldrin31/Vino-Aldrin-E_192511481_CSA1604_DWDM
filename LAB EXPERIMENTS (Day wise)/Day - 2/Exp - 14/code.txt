# ==============================================================================
# Course: CSA1604 - Data Warehousing and Data Mining
# Name: Vino Aldrin E
# Register No: 192511481
# Experiment 14: Comparing Class Performance Using Summary Statistics & Boxplot
# ==============================================================================

# AIM:
# To compare the performance of Class A and Class B in Year 9 exams by computing
# mean, median, range, and visualizing the distribution using a boxplot.

# Exam marks for Class A and Class B
classA <- c(76, 35, 47, 64, 95, 66, 89, 36, 84)
classB <- c(51, 56, 84, 60, 59, 70, 63, 66, 50)

# (i) Calculate Mean, Median, and Range for Class A
mean(classA)
median(classA)
range(classA)
max(classA) - min(classA)

# Calculate Mean, Median, and Range for Class B
mean(classB)
median(classB)
range(classB)
max(classB) - min(classB)

# (ii) Boxplot Comparison
boxplot(classA, classB,
        names = c("Class A", "Class B"),
        main = "Boxplot of Class A vs Class B Marks",
        ylab = "Marks")
