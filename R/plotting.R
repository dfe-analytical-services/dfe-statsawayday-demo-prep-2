createTimeSeriesPlot <- function(df, breakdown, metric) {
  ggplot(df, aes(x = time_period, 
                 y = get(metric), 
                 color = get(breakdown))) +
    geom_line(size = 1.2) +
    theme_classic() +
    theme(
      text = element_text(size = 12),
      axis.title.x = element_text(margin = margin(t = 12)),
      axis.title.y = element_text(margin = margin(r = 12)),
      axis.line = element_line(size = 1.0),
      legend.position = "top"
    ) +
    scale_y_continuous(
      labels = scales::number_format(accuracy = 1, big = ",")
    ) +
    xlab("Academic year end") +
    ylab(metric) +
    scale_color_manual(
      values = gss_colour_pallette
    )
}

