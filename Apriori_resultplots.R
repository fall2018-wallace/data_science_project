
library(arulesViz)
lift_all <- hist(quality(rules)$lift)
rules_all <- plot(rules,jitter = 0)
goodrules_all <- plot(goodrules)
freq_all <- itemFrequencyPlot(df,support=0.1)

lift_sub <- hist(quality(rules1)$lift)
rules_sub <- plot(rules1,jitter = 0)
goodrules_sub <- plot(goodrules1)
freq_sub <- itemFrequencyPlot(df1,support=0.1)
