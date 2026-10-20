Exp 36 (Day 4 Q7) - Prediction of diabetes using decision tree vs SVM, accuracy and F1
Weka 3.9.6 Explorer, run on 20-10-2026. Screenshots are captures of the live Weka window (1456x819).

Dataset: diabetes.arff (Pima Indians, Weka data folder) - 768 records, 8 numeric attributes, tested_negative/positive.
Test option: 10-fold cross-validation.
  J48       : accuracy 73.83%, weighted F1 0.736, F1(positive) 0.614
  SVM (SMO) : accuracy 77.34%, weighted F1 0.763, F1(positive) 0.625
SVM is better overall; J48 recalls more diabetic patients (0.597 vs 0.541). Step-by-step F1 working in
Exp 36 accuracy f1 graph.R (computed in R).

Files: 01 dataset loaded.png, 02 j48 output.png, 03 svm smo output.png, Exp 36 - Accuracy and F1 Graph (R).png
(made in R from the Weka confusion matrices), j48 output.txt, svm smo output.txt, Exp 36 accuracy f1 graph.R
Result: The experiment was executed successfully.
