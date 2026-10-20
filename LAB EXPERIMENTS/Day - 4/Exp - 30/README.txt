Exp 30 (Day 4 Q1) - Mall customer segmentation with clustering
Weka 3.9.6 Explorer, run on 20-10-2026. Screenshots are captures of the live Weka window (1456x819).

Dataset: mall customers.csv - CustomerID, Gender, Age, AnnualIncome (k$), SpendingScore (1-100); 60 customers
(the 5 sample rows from the sheet + 55 prepared rows covering the five segments).
Clusterer: SimpleKMeans, k = 5, k-means++ initialisation, seed 10, clustering on AnnualIncome and SpendingScore
(CustomerID, Gender, Age ignored). A first run with random initialisation merged two segments (SSE 2.07);
k-means++ separated all five (SSE 1.28).

Segments (centroids income / spending):
  cluster4  92.2 / 84.8  -> Priority customers (high income, high spending)  11
  cluster3  51.7 / 50.8  -> Usual customers (average income and spending)     13
  cluster1  24.5 / 79.3  -> Young target customers (low income, high spending) 11
  cluster2  25.6 / 23.4  -> Senior citizen target customers (low income, low spending) 14
  cluster0  91.9 / 18.4  -> Careful / sensible customers (high income, low spending) 11
Target customers for marketing: Priority and Young target customers (highest spending).

Files: mall customers.csv, 01 dataset loaded.png, 02 kmeans 5 clusters output.png,
03 cluster plot income vs spending.png, kmeans output.txt, mall customers clustered.arff (each customer with its cluster),
Exp 30 cluster plot.R, Exp 30 - Cluster Plot Income vs Spending (R).png (same Weka clusters re-plotted in R with
large points and centroids, because Weka's own plot draws very small x marks)
Result: The experiment was executed successfully.
