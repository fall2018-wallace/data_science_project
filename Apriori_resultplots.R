
lift_all <- hist(quality(rules)$lift)
rules_all <- plot(rules,jitter = 0)
goodrules_all <- plot(goodrules)
freq_all <- itemFrequencyPlot(df,support=0.1)
