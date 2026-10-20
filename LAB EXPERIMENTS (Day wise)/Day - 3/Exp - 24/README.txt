Exp 24 (Day 3 Q3) - Bayes classification and decision tree (using training and test data)
Weka 3.9.6 Explorer, run on 20-10-2026. Screenshots are captures of the live Weka window (1456x819).

Dataset: the 14-row buys_computer table from the sheet (age, income, student, credit_rating -> buys_computer).
  buy computer train.arff = RID 1-10 (training data), buy computer test.arff = RID 11-14 (test data),
  buy computer full.arff = all 14 rows.
Settings: Test option = Supplied test set (test file), Output predictions = PlainText.
  NaiveBayes (default); J48 -C 0.25 -M 2. Extra run: J48 on all 14 rows with Use training set.

Results on the test data (4 records):
  Naive Bayes : 3/4 correct = 75%  (confusion matrix [2 1 | 0 1])
  J48         : 2/4 correct = 50%  (tree from 10 rows splits only on age)
  J48 on full data gives the textbook tree: age<=30 -> student (yes: yes, no: no); 31-40 -> yes; >40 -> credit_rating
  (fair: yes, excellent: no), 5 leaves, 100% on training data.
Naive Bayes did better on the unseen test records; the tree needs more training data to learn the student/credit splits.

Files: buy computer train/test/full.arff, 01 training data loaded.png, 02 naive bayes test output.png,
03 j48 test output.png, 04 j48 tree (training data).png, 05 j48 full data output.png, 06 j48 tree (full data).png,
naive bayes output.txt, j48 output.txt, j48 full data output.txt
Result: The experiment was executed successfully.
