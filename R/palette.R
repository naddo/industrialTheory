industrial_theory <- c(
  light_green    = "#A8D5BA",
  medium_green   = "#4A8F5A",
  beige          = "#D9D1B8",
  sandalwood     = "#A7894F",
  light_blue     = "#A9C7D8",
  medium_blue    = "#5A7F89",
  soft_yellow    = "#F2E8A6",
  solar_yellow   = "#F4C400",
  light_gray     = "#C7D0D3",
  alert_orange   = "#F25C05",
  medium_gray    = "#6F8A83",
  fire_red       = "#B3120A",
  deep_gray      = "#4E6A5E",
  safety_green   = "#0B8F3A",
  spotlight_buff = "#E8D9A8",
  caution_blue   = "#1C6D8C"
)

industrial_pal <- function(n = NULL, type = c("categorical", "sequential", "diverging"), direction = 1) {
  type <- match.arg(type)

  if (!direction %in% c(1, -1)) {
    stop("`direction` must be 1 or -1.")
  }

  anchors <- list(
    categorical = names(industrial_theory),
    sequential  = c("light_gray", "light_blue", "medium_blue", "deep_gray"),
    diverging   = c("medium_blue", "light_blue", "light_gray", "soft_yellow", "solar_yellow", "alert_orange", "fire_red")
  )

  pal <- unname(industrial_theory[anchors[[type]]])

  if (direction == -1) {
    pal <- rev(pal)
  }

  if (is.null(n)) {
    return(pal)
  }

  if (!is.numeric(n) || length(n) != 1 || n < 1) {
    stop("`n` must be a single positive number.")
  }

  n <- as.integer(n)

  if (type == "categorical") {
    return(pal[seq_len(min(n, length(pal)))])
  }

  grDevices::colorRampPalette(pal)(n)
}
