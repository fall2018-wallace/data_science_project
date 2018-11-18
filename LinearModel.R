
mode1 <- lm(Satisfaction ~ Airline_status,data = cleanData)
summary(mode1) #0.1184

mode2 <- lm(Satisfaction ~ Age,data = cleanData)
summary(mode2) #0.0492

mode3 <- lm(Satisfaction ~ Gender,data = cleanData)
summary(mode3) #0.01761

mode4 <- lm(Satisfaction ~ Price_sensitivity,data = cleanData)
summary(mode4) #0.007637

table(rawData$Satisfaction)
