# CSA1604 - Data Warehousing and Data Mining

**Student Name:** Vino Aldrin E  
**Register No:** 192511481  
**Department:** Computer Science and Engineering  
**Course Code:** CSA1604  
**Course Name:** Data Warehousing and Data Mining  

---

## 📁 Repository Structure

```
CSA1604/
├── ALL LAB EXPERIMENTS/
│   ├── Exp_01_Approximate_Median.png ... Exp_21_b_Blood_Pressure_vs_Age_Bar_Chart.png
│   └── README.md  (Consolidated 01 to 21 sequential screenshots & documentation)
│
├── ASSESSMENTS/
│   ├── Vino Aldrin E_192511481_CSA1604_CO1_Activity-I.pdf
│   ├── Vino Aldrin E_192511481_CSA1604_CO1_AT-1_Short_Answer_Test.pdf
│   ├── Vino Aldrin E_192511481_CSA1604_CO1_AT-2_Technical_Presentation.pdf
│   ├── Vino Aldrin E_192511481_CSA1604_CO1_AT-2_Technical_Presentation.pptx
│   └── Vino Aldrin E_192511481_CSA1604_CO1_AT-3_Concept_Mapping.pdf
│
└── LAB EXPERIMENTS/
    ├── Day - 1/
    │   ├── Exp - 1/  (Approximate Median for Grouped Frequency Data)
    │   ├── Exp - 2/  (Measures of Central Tendency & Dispersion for Age)
    │   ├── Exp - 3/  (Data Preprocessing: Bin Mean, Median, Min-Max Smoothing)
    │   ├── Exp - 4/  (Normalization & Visualizations: Boxplot, Scatter, Q-Q Plot)
    │   ├── Exp - 5/  (Normalization: Min-Max, Z-Score, Decimal Scaling)
    │   ├── Exp - 6/  (Measures of Central Tendency for Pencil Inventory Data)
    │   ├── Exp - 7/  (Scatter Plot with Smooth Curve: Phones Sold vs Revenue)
    │   ├── Exp - 8/  (Equal-Frequency Partitioning & Histogram for Marks)
    │   ├── Exp - 9/  (Interquartile Range & Standard Deviation for Car Speed)
    │   ├── Exp - 10/ (Quartiles Calculation Q1 and Q3 for Age Data)
    │   └── Exp - 11/ (Data Smoothing by Bin Mean, Bin Median, Bin Boundaries)
    │
    └── Day - 2/
        ├── Exp - 12/ (Sample Covariance & Correlation Analysis for Preferences)
        ├── Exp - 13/ (Equal-Frequency Partitioning, Smoothing & Price Histogram)
        ├── Exp - 14/ (Class Performance Comparison: Summary Statistics & Boxplot)
        ├── Exp - 15/ (Min-Max and Z-Score Normalization on Numeric Group Data)
        ├── Exp - 16/ (AirPassengers Dataset Histogram with Custom Breaks)
        ├── Exp - 17/ (Multiple Lines in Line Chart Using Single Plot Function)
        ├── Exp - 18/ (Linear Regression Modeling & Prediction: Mortality vs Hardness)
        ├── Exp - 19/ (Boxplot Visualization for MPG vs Number of Cylinders)
        ├── Exp - 20/ (Outlier Detection Using Boxplot for Tennis Player Scores)
        └── Exp - 21/ (Blood Pressure vs Age Analysis via Scatterplot & Bar Chart)
```

---

## 📑 Assessments

| Course Outcome (CO) | Assessment Tool | Description | File |
| :--- | :--- | :--- | :--- |
| **CO1** | Activity-I | Measures of Central Tendency & Dispersion Problem Solving | [`Vino Aldrin E_192511481_CSA1604_CO1_Activity-I.pdf`](ASSESSMENTS/Vino%20Aldrin%20E_192511481_CSA1604_CO1_Activity-I.pdf) |
| **CO1** | AT-1 | Short Answer Test on Data Warehousing & OLAP Concepts | [`Vino Aldrin E_192511481_CSA1604_CO1_AT-1_Short_Answer_Test.pdf`](ASSESSMENTS/Vino%20Aldrin%20E_192511481_CSA1604_CO1_AT-1_Short_Answer_Test.pdf) |
| **CO1** | AT-2 | Technical Presentation on OLAP & Data Cubes | [`Vino Aldrin E_192511481_CSA1604_CO1_AT-2_Technical_Presentation.pdf`](ASSESSMENTS/Vino%20Aldrin%20E_192511481_CSA1604_CO1_AT-2_Technical_Presentation.pdf) <br> [`Vino Aldrin E_192511481_CSA1604_CO1_AT-2_Technical_Presentation.pptx`](ASSESSMENTS/Vino%20Aldrin%20E_192511481_CSA1604_CO1_AT-2_Technical_Presentation.pptx) |
| **CO1** | AT-3 | Concept Mapping on Decision Support Systems & Data Warehousing | [`Vino Aldrin E_192511481_CSA1604_CO1_AT-3_Concept_Mapping.pdf`](ASSESSMENTS/Vino%20Aldrin%20E_192511481_CSA1604_CO1_AT-3_Concept_Mapping.pdf) |

---

## 🧪 Lab Experiments

### Day - 1

| Exp No | Topic / Objective | Key Methods / Functions |
| :---: | :--- | :--- |
| **01** | Approximate Median Value for Grouped Data | `median(age)`, `median(frequency)` |
| **02** | Measures of Central Tendency & Dispersion (Mean, Median, Mode, Range, Quartiles) | `mean()`, `median()`, `table()`, `range()`, `quantile()` |
| **03** | Data Preprocessing: Bin Smoothing (Mean, Median, Min-Max Boundaries) | `cut()`, `tapply()`, `mean`, `median` |
| **04** | Data Normalization & Data Visualizations (Hospital Dataset) | Min-Max, Z-score, Decimal scaling, `boxplot()`, `plot()`, `qqplot()` |
| **05** | Normalization Techniques (Min-Max, Z-Score, Decimal Scaling) | Transformation of values onto normalized scale |
| **06** | Measures of Central Tendency on Pencil Count Vector | `mean()`, `median()`, `table()` |
| **07** | Scatter Plot with Smooth Curve: Mobile Phones Sold vs Revenue | `scatter.smooth(x, y)` |
| **08** | Equal-Frequency (Equi-Depth) Partitioning and Histogram | `cut()`, `hist()` |
| **09** | Interquartile Range (IQR) and Standard Deviation (SD) for Speed Data | `IQR()`, `sd()` |
| **10** | Quartile Calculation (Q1 - 25th percentile, Q3 - 75th percentile) for Age Data | `quantile(age, 0.25)`, `quantile(age, 0.75)` |
| **11** | Data Smoothing by Bin Means, Bin Medians, and Bin Boundaries | `seq()`, `cut()`, `tapply()` |

---

### Day - 2

| Exp No | Topic / Objective | Key Methods / Functions |
| :---: | :--- | :--- |
| **12** | Sample Covariance and Correlation Analysis for Photograph Preferences | `cov()`, `cor()`, `data.frame()` |
| **13** | Equal-Frequency Partitioning, Data Smoothing & Price Histogram | `split()`, `lapply()`, `sapply()`, `hist()` |
| **14** | Class Performance Comparison Using Summary Statistics & Boxplot | `mean()`, `median()`, `range()`, `boxplot()` |
| **15** | Min-Max and Z-Score Data Normalization on Numeric Group Data | `min()`, `max()`, `mean()`, `sd()` |
| **16** | Histogram Analysis with Custom Bins on AirPassengers Dataset | `seq()`, `hist()` |
| **17** | Multiple Lines in Line Chart Using Single Plot Function (mtcars) | `plot()`, `lines()`, `legend()` |
| **18** | Linear Regression Modeling & Prediction (Mortality vs Hardness) | `lm()`, `summary()`, `abline()`, `predict()` |
| **19** | Boxplot Visualization for MPG vs Number of Cylinders (mtcars) | `boxplot(mpg ~ cyl)` |
| **20** | Outlier Detection Using Boxplot for Tennis Player Scores | `boxplot()`, outlier identification |
| **21** | Blood Pressure vs Age Analysis via Scatterplot & Bar Chart | `plot()`, `cut()`, `tapply()`, `barplot()` |

---
