
library(arulesViz)
library(arules)

Histogram_rules <- hist(lifts)
plot_rules <- plot(rules, jitter=0)

plot_goodrules <- plot(goodrules)
Itemfrequencyplot <- itemFrequencyPlot(items(rules),support=0.1)
