
mode1 <- lm(Satisfaction ~ Airline_status,data = rawData)
summary(mode1) #0.1184

mode2 <- lm(Satisfaction ~ Day_of_month,data = rawData)
summary(mode2) #0.0492


table(rawData$Satisfaction)
