# ==============================================================================
# Course: CSA1604 - Data Warehousing and Data Mining
# Name: Vino Aldrin E
# Register No: 192511481
# Experiment 23 (theory): Maximum Number of Association Rules and Maximum Frequent Itemset Size
# ==============================================================================
items <- c("Milk", "Beer", "Diapers", "Bread", "Butter", "Cookies")
trans <- list(c("Milk","Beer","Diapers"), c("Bread","Butter","Milk"), c("Milk","Diapers","Cookies"),
              c("Bread","Butter","Cookies"), c("Beer","Cookies","Diapers"), c("Milk","Diapers","Bread","Butter"),
              c("Bread","Butter","Diapers"), c("Beer","Diapers"), c("Milk","Diapers","Bread","Butter"), c("Beer","Cookies"))
d <- length(items)
# (a) R = 3^d - 2^(d+1) + 1
R <- 3^d - 2^(d + 1) + 1
cat("(a) Maximum number of association rules =", R, "\n")
# (b) largest transaction size
cat("(b) Maximum size of frequent itemset =", max(lengths(trans)), "\n")
