Exp 23 (Day 3 Q2) - Apriori and FP-Growth (Milk, Beer, Diapers, Bread, Butter, Cookies) + theory
Weka 3.9.6 Explorer, run on 20-10-2026. Screenshots are captures of the live Weka window (1456x819).

Question: Perform Apriori and FP algorithm (support 3, confidence 50%); (a) max number of rules, (b) max frequent itemset size.
Dataset: market basket.arff - 10 transactions from the table in the day 3 sheet.
Settings: Apriori / FPGrowth with -C 0.5 -M 0.3 (support 3 of 10).

Result: L1 = 6, L2 = 7, L3 = 2. Both algorithms give the same 22 rules; strongest: Butter => Bread and Bread => Butter
(conf 1.0), Milk,Butter => Bread, Diapers,Butter => Bread (1.0), Milk => Diapers (0.8), Beer => Diapers (0.75).
(a) 3^6 - 2^7 + 1 = 602 rules.   (b) 4 (the longest transaction has 4 items).  Computed in R: Exp 23 theory.R, screenshot Exp 23 - Theory Answers (R).png.

Files: market basket.arff, 01 dataset loaded.png, 02 apriori output.png, 03 fp growth output.png,
apriori output.txt, fp growth output.txt, Exp 23 theory.R, Exp 23 - Theory Answers (R).png
Result: The experiment was executed successfully.
