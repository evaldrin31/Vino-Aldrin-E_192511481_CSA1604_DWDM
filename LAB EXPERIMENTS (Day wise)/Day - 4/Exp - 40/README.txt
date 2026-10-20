Exp 40 (Day 4 Q11) - Normalization of strike rates 100, 70, 60, 90, 90
Weka 3.9.6 Explorer, run on 20-10-2026. Screenshots are captures of the live Weka window (1456x819).

Weka filters (class set to "No class" so the attribute is transformed):
  Normalize (min-max to [0,1]) : 1.0, 0.25, 0.0, 0.75, 0.75
  Standardize (z-score, sample SD 16.432) : 1.095, -0.730, -1.339, 0.487, 0.487
Calculated in R (Exp 40 normalization.R, Exp 40 - Normalization (R).png):
  z-score with mean absolute deviation (13.6) : 1.324, -0.882, -1.618, 0.588, 0.588
  decimal scaling (j = 3) : 0.100, 0.070, 0.060, 0.090, 0.090

Files: strike rates.csv, 01 dataset loaded.png, 02 min-max normalized (Normalize filter).png,
03 z-score normalized (Standardize filter).png, Exp 40 normalization.R, Exp 40 - Normalization (R).png
Result: The experiment was executed successfully.
