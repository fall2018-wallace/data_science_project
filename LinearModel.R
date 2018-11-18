
mode1 <- lm(Satisfaction ~ Airline_status,data = cleanData)
summary(mode1) #0.1184

mode2 <- lm(Satisfaction ~ Age,data = cleanData)
summary(mode2)

mode2 <- lm(Satisfaction ~ Day_of_month,data = rawData)
summary(mode2) #0.0492

Airline_name

table(rawData$Satisfaction)
