Exp 29 (Day 3 Q8) - Rule-based classification vs decision tree, compare accuracy and plot graph
Weka 3.9.6 Explorer, run on 20-10-2026. Screenshots are captures of the live Weka window (1456x819).

Dataset: vote.arff (Weka data folder) - 435 records, 16 yes/no votes, class democrat/republican.
Test option: 10-fold cross-validation.
  J48 (decision tree) : 96.32% (419/435), kappa 0.922, weighted F 0.963
  JRip (rule based)   : 95.40% (415/435), kappa 0.904, weighted F 0.954, 4 rules
The decision tree is slightly more accurate; JRip gives a smaller, easier-to-read model (4 rules).

Files: 01 dataset loaded.png, 02 j48 output.png, 03 jrip output.png, Exp 29 comparison graph.R, Exp 29 - Accuracy Comparison Graph (R).png
(plotted from the Weka results), j48 output.txt, jrip output.txt
Result: The experiment was executed successfully.
