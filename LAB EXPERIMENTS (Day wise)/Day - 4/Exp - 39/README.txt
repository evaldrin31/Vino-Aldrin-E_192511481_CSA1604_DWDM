Exp 39 (Day 4 Q10) - Apriori vs FP-Growth on TV brand transactions (min_sup = 2, confidence 50%)
Weka 3.9.6 Explorer, run on 20-10-2026. Screenshots are captures of the live Weka window (1456x819).

Dataset: tv transactions.arff - T1-T9 (SONY, BPL, LG, SAMSUNG, ONIDA).
Settings: Apriori -I -C 0.5 -M 0.22 ; FPGrowth -C 0.5 -M 0.22 (support 2 of 9).
Frequent itemsets: L1 = 5, L2 = 6, L3 = 2 ({SONY,BPL,LG}, {SONY,BPL,ONIDA}).
Both algorithms generated the same 16 rules (only the listing order differs), so there are NO unique rules - every
Apriori rule also appears in the FP-Growth output and vice versa.
Examples: LG => SONY (1.0), LG => BPL (1.0), SAMSUNG => BPL (1.0), LG => SONY,BPL (1.0), SONY => BPL (0.67) ...

Files: tv transactions.arff, 01 dataset loaded.png, 02 apriori output.png, 03 fp growth output.png,
apriori output.txt, fp growth output.txt
Result: The experiment was executed successfully.
