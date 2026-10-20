Exp 28 (Day 3 Q7) - Hot dog transactions: frequent itemsets and rules (s = 33.33%, c = 60%)
Weka 3.9.6 Explorer, run on 20-10-2026. Screenshots are captures of the live Weka window (1456x819).

Dataset: hotdog transactions.arff - T1-T6 from the sheet.
Settings: Apriori -I -C 0.6 -M 0.33 ; FPGrowth -C 0.6 -M 0.33 (support 2 of 6).
a) Frequent itemsets: L1 = {Hot_Dogs 4, Buns 2, Ketchup 2, Coke 3, Chips 4}, L2 = {Hot_Dogs,Buns 2; Hot_Dogs,Coke 2;
   Hot_Dogs,Chips 2; Coke,Chips 3}, L3 = {Hot_Dogs,Coke,Chips 2}.
b) 14 candidate rules, 8 ACCEPTED (conf >= 60%) and 6 REJECTED - computed in R, see Exp 28 - Accepted and Rejected Rules (R).png.
   Apriori and FP-Growth output exactly the same 8 accepted rules.

Files: hotdog transactions.arff, 01 dataset loaded.png, 02 apriori output.png, 03 fp growth output.png,
apriori output.txt, fp growth output.txt, Exp 28 accepted rejected rules.R, Exp 28 - Accepted and Rejected Rules (R).png
Result: The experiment was executed successfully.
