Exp 26 (Day 3 Q5) - Frequent itemsets with Apriori and FP-Growth tree (T1 MONKEY ... T5 COOKIE)
Weka 3.9.6 Explorer, run on 20-10-2026. Screenshots are captures of the live Weka window (1456x819).

Settings: min sup = 50%(2) as written on the sheet -> support count 2 (Weka -M 0.4 = 2 of 5 transactions), min conf = 80%.
  Apriori -I (list itemsets) -N 1000 -C 0.8 -M 0.4; FPGrowth -N 1000 -C 0.8 -M 0.4.
  Note: T5 lists O twice; an item is counted once per transaction.

Frequent itemsets (Apriori): L1 = 7 {M,O,N,K,E,Y,C}, L2 = 14, L3 = 12, L4 = 5, L5 = 1 -> {O,N,K,E,Y} : 2
Rules: Apriori and FP-Growth both found 101 rules with confidence >= 80% (full list in the .txt files).
FP-tree: drawn in R - Exp 26 - FP Tree (R).png (items ordered K:5, E:4, M:3, O:3, Y:3, C:2, N:2).

Files: transactions.arff, 01 dataset loaded.png, 02 apriori output part 1-3.png, 03 fp growth output.png,
Exp 26 fp tree.R, Exp 26 - FP Tree (R).png, apriori output.txt, fp growth output.txt
Result: The experiment was executed successfully.
