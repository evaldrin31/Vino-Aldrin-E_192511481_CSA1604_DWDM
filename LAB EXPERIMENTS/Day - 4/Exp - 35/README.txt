Exp 35 (Day 4 Q6) - FP-Growth rules (support 50%, confidence 75%)
Weka 3.9.6 Explorer, run on 20-10-2026. Screenshots are captures of the live Weka window (1456x819).

Dataset: grocery transactions.arff - 5 transactions (Bread, Cheese, Egg, Juice, Milk, Yogurt).
Settings: FPGrowth -C 0.75 -M 0.5 (support >= 2.5 -> 3 transactions).
Rules found (4):
  Cheese => Juice (conf 1.00), Juice => Bread (0.75), Bread => Juice (0.75), Juice => Cheese (0.75)

Files: grocery transactions.arff, 01 dataset loaded.png, 02 fp growth output.png, fp growth output.txt
Result: The experiment was executed successfully.
