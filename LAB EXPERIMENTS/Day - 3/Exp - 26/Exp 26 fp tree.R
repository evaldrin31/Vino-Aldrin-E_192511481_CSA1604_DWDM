# ==============================================================================
# Course: CSA1604 - Data Warehousing and Data Mining
# Name: Vino Aldrin E
# Register No: 192511481
# Experiment 26 (FP-tree): FP-Growth Tree for MONKEY Transactions (min support count 2)
# ==============================================================================
trans <- list(c("M","O","N","K","E","Y"), c("D","O","N","K","E","Y"), c("M","A","K","E"),
              c("M","U","C","K","Y"), c("C","O","K","I","E"))
build_fp <- function(trans, minsup) {
  cnt <- table(unlist(trans))
  cnt <- cnt[cnt >= minsup]
  ord <- names(cnt)[order(-cnt, names(cnt))]
  nodes <- data.frame(item = "null", count = 0, parent = 0)
  for (t in trans) {
    p <- 1
    for (it in ord[ord %in% t]) {
      k <- which(nodes$parent == p & nodes$item == it)
      if (length(k) == 0) {
        nodes <- rbind(nodes, data.frame(item = it, count = 0, parent = p))
        k <- nrow(nodes)
      }
      nodes$count[k] <- nodes$count[k] + 1
      p <- k
    }
  }
  print(cnt[ord])
  nodes
}
draw_fp <- function(nodes, title) {
  nodes$x <- 0; nodes$y <- 0; leaf <- 0
  pos <- function(i, d) {
    kids <- which(nodes$parent == i)
    nodes$y[i] <<- -d
    if (length(kids) == 0) { leaf <<- leaf + 1; nodes$x[i] <<- leaf }
    else { for (k in kids) pos(k, d + 1); nodes$x[i] <<- mean(nodes$x[kids]) }
  }
  pos(1, 0)
  plot(nodes$x, nodes$y, type = "n", axes = FALSE, xlab = "", ylab = "", main = title,
       xlim = range(nodes$x) + c(-0.6, 0.6), ylim = range(nodes$y) + c(-0.5, 0.5))
  for (i in 2:nrow(nodes)) segments(nodes$x[nodes$parent[i]], nodes$y[nodes$parent[i]], nodes$x[i], nodes$y[i])
  points(nodes$x, nodes$y, pch = 21, cex = 6, bg = "lightyellow")
  lab <- ifelse(nodes$item == "null", "null", paste0(nodes$item, ":", nodes$count))
  text(nodes$x, nodes$y, lab, font = 2)
}
nodes <- build_fp(trans, 2)
nodes
draw_fp(nodes, "FP-tree (min support count = 2)")
