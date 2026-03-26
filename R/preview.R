preview_industrial <- function(file = "palette_overview.png") {
  
  pal_all <- industrial_theory
  
  pal_seq <- industrial_pal(100, type = "sequential")
  pal_div <- industrial_pal(100, type = "diverging")
  
  png(file, width = 1200, height = 600)
  par(mar = c(2, 2, 3, 2))
  
  layout(matrix(1:3, nrow = 3), heights = c(1, 1, 1))
  
  # --- CATEGORICAL ---
  barplot(
    rep(1, length(pal_all)),
    col = pal_all,
    border = NA,
    space = 0.1,
    axes = FALSE
  )
  title("Categorical (All 16 Colors)", line = -1)
  
  # --- SEQUENTIAL ---
  image(
    x = seq_along(pal_seq),
    y = c(1, 2),
    z = matrix(seq_along(pal_seq), nrow = length(pal_seq), ncol = 1),
    col = pal_seq,
    axes = FALSE
  )
  title("Sequential (Low → High)", line = -1)
  
  # --- DIVERGING ---
  image(
    x = seq_along(pal_div),
    y = c(1, 2),
    z = matrix(seq_along(pal_div), nrow = length(pal_div), ncol = 1),
    col = pal_div,
    axes = FALSE
  )
  title("Diverging (Negative → Positive)", line = -1)
  
  dev.off()
}

