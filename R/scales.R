scale_color_industrial <- function(..., type = "categorical") {
  ggplot2::scale_color_manual(values = industrial_pal(type = type), ...)
}

scale_fill_industrial <- function(..., type = "categorical") {
  ggplot2::scale_fill_manual(values = industrial_pal(type = type), ...)
}