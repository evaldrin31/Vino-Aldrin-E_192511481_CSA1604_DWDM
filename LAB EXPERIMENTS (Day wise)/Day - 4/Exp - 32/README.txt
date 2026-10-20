Exp 32 (Day 4 Q3) - Naive Bayes vs SVM on categorical data, compare and plot
Weka 3.9.6 Explorer, run on 20-10-2026. Screenshots are captures of the live Weka window (1456x819).

Dataset: breast-cancer.arff (Weka data folder) - 286 records, 9 categorical attributes, class recurrence / no-recurrence.
Test option: 10-fold cross-validation.
  Naive Bayes : 71.68% (205/286), kappa 0.286, weighted F 0.708
  SVM (SMO)   : 69.58% (199/286), kappa 0.198, weighted F 0.677
Naive Bayes is better here; it also finds more recurrence cases (recall 0.435 vs 0.329).

Files: 01 dataset loaded.png, 02 naive bayes output.png, 03 svm smo output.png, Exp 32 comparison graph.R, Exp 32 - Comparison Graph (R).png
(plotted from the Weka results), naive bayes output.txt, svm smo output.txt
Result: The experiment was executed successfully.
