Exp 31 (Day 4 Q2) - K-Means on the employee CSV, changing the cluster size and visualising
Weka 3.9.6 Explorer, run on 20-10-2026. Screenshots are captures of the live Weka window (1456x819).

Dataset: employee.csv (6 employees: Gender, Age, Salary, Credit). EmployeID ignored for clustering.
SimpleKMeans (k-means++, seed 10):
  k = 2 : clusters of 3 and 3, within-cluster SSE 2.998
  k = 3 : clusters of 2, 2 and 2, within-cluster SSE 1.452 (tighter clusters)
Cluster plots: Salary (x) vs Credit (y), coloured by cluster.

Files: employee.csv, 01 dataset loaded.png, 02 kmeans k2 output.png, 03 cluster plot k2.png,
04 kmeans k3 output.png, 05 cluster plot k3.png, kmeans k2 output.txt, kmeans k3 output.txt,
Exp 31 cluster plot.R, Exp 31 - Cluster Plot k2 and k3 (R).png, Exp 31 - Cluster Centroids Console (R).png
(Weka's clusters re-plotted in R with large labelled points; R centroids match the Weka centroids)
Result: The experiment was executed successfully.
