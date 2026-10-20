Exp 38 (Day 4 Q9) - Dataset for the given decision tree, accuracy, rule-based induction, comparison
Weka 3.9.6 Explorer, run on 20-10-2026. Screenshots are captures of the live Weka window (1456x819).

a) gender.arff - 20 records (Height, Weight -> Gender) labelled using the tree in the sheet
   (Height > 180 -> Male; else Weight > 80 -> Male; else Female). The decision for every record and the
   accuracy (20/20 = 100%) are computed in R (Exp 38 confusion matrix.R).
b) Rules from the tree: R1 Height>180 => Male; R2 Height<=180 AND Weight>80 => Male; R3 Height<=180 AND Weight<=80 => Female.
   Weka JRip (rule induction) learned 3 rules: Weight<=68 => Female; Weight<=79 AND Height<=174 => Female; else Male.
c) J48 and JRip both 100% on training data, confusion matrix [11 0 | 0 9] (Exp 38 - Decision and Confusion Matrix (R).png).
   J48 chose different thresholds (Weight 68/79, Height 174) because several splits separate this small dataset equally well.

Files: gender.arff, 01 dataset loaded.png, 02 j48 output.png, 03 j48 tree.png, 04 jrip rules output.png,
Exp 38 - Decision and Confusion Matrix (R).png (made in R), j48 output.txt, jrip output.txt, Exp 38 confusion matrix.R
Result: The experiment was executed successfully.
