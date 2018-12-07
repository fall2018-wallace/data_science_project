
lift_all <- hist(quality(rules)$lift)
rules_all <- plot(rules,jitter = 0)
goodrules_all <- plot(goodrules)
freq_all <- itemFrequencyPlot(df,support=0.1)

lift_sub <- hist(quality(rules)$lift)
rules_sub <- plot(rules,jitter = 0)
goodrules_sub <- plot(goodrules)
freq_sub <- itemFrequencyPlot(df,support=0.1)
