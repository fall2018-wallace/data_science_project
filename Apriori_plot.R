
Histogram_rules <- hist(quality(rules)$lift)
plot_rules <- plot(rules,jitter = 0)

plot_goodrules <- plot(goodrules)
Itemfrequencyplot <- itemFrequencyPlot(df,support=0.1)
