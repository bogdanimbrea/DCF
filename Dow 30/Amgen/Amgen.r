install.packages("magrittr")
library(plotly)

# x axis
x = list("Current Share Price", "Upside", "Intrinsic Value")
measure = c("relative", "relative", "total")
text = c("", "+252.19", "496.03")
y = c(243.84, 252.19, 496.03)
data = data.frame(x=factor(x,levels=x),measure,text,y)

fig <- plot_ly(
  data, name = "", type = "waterfall", measure = ~measure,
  x = ~x, textposition = "outside", y= ~y, text =~ text,
  connector = list(line = list(color = "rgb(63, 63, 63)")))
fig <- fig %>%
  layout(title = "Amgen Intrinsic Value",
         xaxis = list(title = ""),
         yaxis = list(title = "$"),
         autosize = TRUE,
         showLegend = FALSE)

fig
