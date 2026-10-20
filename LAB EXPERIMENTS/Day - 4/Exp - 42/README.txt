Exp 42 (Day 4 Q13) - Frequent itemsets (Apriori and FP-growth) and metarule rules (MONKEY transactions)
Weka 3.9.6 Explorer, run on 20-10-2026. Screenshots are captures of the live Weka window (1456x819).

Settings: min support 60% (3 of 5) and min confidence 80% (standard values for this textbook problem; the
sheet does not give them). Apriori -I -C 0.8 -M 0.6 ; FPGrowth -C 0.8 -M 0.6.
(a) Frequent itemsets: {M 3, O 3, K 5, E 4, Y 3}, {M,K 3; O,K 3; O,E 3; K,E 4; K,Y 3}, {O,K,E 3}.
    Both give the same 9 rules. FP-growth needs two scans and no candidate generation; Apriori builds candidates
    level by level - FP-growth is more efficient FP-tree and metarule computed in R: Exp 42 - FP Tree and Metarule (R).png.
(b) Strong rules for buys(X,item1) AND buys(X,item2) => buys(X,item3):
    buys(X,K) AND buys(X,O) => buys(X,E)  [s = 60%, c = 100%]
    buys(X,O) AND buys(X,E) => buys(X,K)  [s = 60%, c = 100%]
    (K,E => O has c = 75%, so it is not strong)

Files: transactions.arff, 01 dataset loaded.png, 02 apriori output.png, 03 fp growth output.png, Exp 42 - FP Tree and Metarule (R).png,
apriori output.txt, fp growth output.txt, Exp 42 fp tree and metarule.R, Exp 42 - Metarule Console Output (R).png
Result: The experiment was executed successfully.
