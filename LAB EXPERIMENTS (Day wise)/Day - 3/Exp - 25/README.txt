Exp 25 (Day 3 Q4) - diabetes.csv: diabetes trend for different ages using linear and multiple regression
Weka 3.9.6 Explorer, run on 20-10-2026. Screenshots are captures of the live Weka window (1456x819).

Dataset: diabetes.csv - 30 records: Age, BMI, Glucose, BloodPressure, Diabetes (Yes if Glucose >= 140).
Target: Glucose (numeric). Diabetes removed in Weka's working copy for the regressions (it is derived from Glucose).
Test option: 10-fold cross-validation.

Linear regression (SimpleLinearRegression, Age only):  Glucose = 0.87 * Age + 112.61
  correlation 0.8824, MAE 6.41, RMSE 7.40
Multiple regression (LinearRegression, Age + BMI + BloodPressure):
  Glucose = 0.8197*Age + 0.7396*BMI + 0.2011*BloodPressure + 78.4542
  correlation 0.9167, MAE 4.86, RMSE 6.29  (better fit than age alone)
Trend: glucose rises about 0.87 per year of age. Diabetic share by age group: 21-35 -> 21%, 36-50 -> 80%, 51-75 -> 100%
(see 01 dataset loaded (age vs diabetes).png, Exp 25 - Age Trend Graph (R).png).

Files: diabetes.csv, 01 dataset loaded (age vs diabetes).png, 02 linear regression (age) output.png,
03 multiple regression output.png, Exp 25 trend graph.R, Exp 25 - Age Trend Graph (R).png (made in R),
linear regression output.txt, multiple regression output.txt
Result: The experiment was executed successfully.
