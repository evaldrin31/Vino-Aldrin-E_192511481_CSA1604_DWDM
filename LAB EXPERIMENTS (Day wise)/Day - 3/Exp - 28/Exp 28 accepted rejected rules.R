# ==============================================================================
# Course: CSA1604 - Data Warehousing and Data Mining
# Name: Vino Aldrin E
# Register No: 192511481
# Experiment 28 (rules): Accepted and Rejected Rules - Hot Dog Transactions (s = 33.33%, c = 60%)
# ==============================================================================
trans <- list(c("HotDogs","Buns","Ketchup"), c("HotDogs","Buns"), c("HotDogs","Coke","Chips"),
              c("Chips","Coke"), c("Chips","Ketchup"), c("HotDogs","Coke","Chips"))
items <- sort(unique(unlist(trans)))
sup <- function(s) sum(sapply(trans, function(t) all(s %in% t)))
freq <- list()
for (k in 1:3) for (s in combn(items, k, simplify = FALSE)) if (sup(s) >= 2) freq[[length(freq) + 1]] <- s
cat("Frequent itemsets:\n")
for (s in freq) cat(" {", paste(s, collapse = ", "), "} :", sup(s), "\n")
cat("\nRules (min confidence 60%):\n")
for (s in freq[lengths(freq) > 1]) {
  for (k in 1:(length(s) - 1)) for (lhs in combn(s, k, simplify = FALSE)) {
    rhs <- setdiff(s, lhs); conf <- sup(s) / sup(lhs)
    cat(sprintf(" %-18s => %-16s conf = %5.1f%%  %s\n", paste(lhs, collapse = ","), paste(rhs, collapse = ","),
                conf * 100, ifelse(conf >= 0.6, "ACCEPTED", "REJECTED")))
  }
}
