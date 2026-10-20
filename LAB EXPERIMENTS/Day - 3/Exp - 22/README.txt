Exp 22 (Day 3 Q1) - Apriori and FP-Growth (customer transactions a-e)
Weka 3.9.6 Explorer, run on 20-10-2026. Screenshots are captures of the live Weka window (1456x819).

Question: Consider the data set and perform the Apriori and FP algorithm, support 3 and confidence 50%.
Dataset: transactions.arff - 10 transactions (TID 0001-0038), items a,b,c,d,e coded t / ? (? = not bought).
Settings: Apriori -N 100 -C 0.5 -M 0.3 (support 3 of 10 = 30%); FPGrowth -N 100 -C 0.5 -M 0.3.
Procedure: Preprocess > Open file > Associate > Apriori (enter settings) > Start; then FPGrowth > Start.

Result: L1 = 5, L2 = 8, L3 = 2 frequent itemsets. Both Apriori and FP-Growth found the same 24 rules,
e.g. a,d => e (conf 1.0), a => e (0.86), b => e (0.83), d => e (0.83), d,e => a (0.80) ...

Files: transactions.arff, 01 dataset loaded.png, 02 apriori output.png, 03 fp growth output.png,
apriori output.txt, fp growth output.txt
Result: The experiment was executed successfully.
