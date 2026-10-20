Exp 27 (Day 3 Q6) - Prediction of categorical data using decision tree: a) Tree b) Preprocess c) Logistic
Weka 3.9.6 Explorer, run on 20-10-2026. Screenshots are captures of the live Weka window (1456x819).

Dataset: weather.nominal.arff (from Weka's data folder; copy saved here) - 14 records, class play (9 yes / 5 no).
Test option: 10-fold cross-validation.
a) Tree (J48): outlook = sunny -> humidity (high: no, normal: yes); overcast -> yes; rainy -> windy (TRUE: no, FALSE: yes).
   5 leaves, accuracy 50% (7/14) in cross-validation.
b) Preprocess: 01 preprocess.png shows the attributes and class distribution.
c) Logistic regression: accuracy 71.43% (10/14), confusion matrix [7 2 | 2 3].
Logistic generalises better than J48 on this tiny dataset.

Files: weather nominal.arff, 01 preprocess.png, 02 j48 output.png, 03 j48 tree.png, 04-05 logistic output.png,
j48 output.txt, logistic output.txt
Result: The experiment was executed successfully.
