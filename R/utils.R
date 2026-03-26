show_industrial <- function() {
  op <- par(mar = c(1, 1, 1, 1))
  on.exit(par(op))
  
  barplot(
    rep(1, length(industrial_theory)),
    col = industrial_theory,
    border = NA,
    space = 0.2
  )
}