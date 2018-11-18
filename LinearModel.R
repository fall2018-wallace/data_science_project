
linearmodel <- lm(Satisfaction ~ Airline_status,data = rawData)
summary(linearmodel) #0.1184

linearmodel <- lm(Satisfaction ~ Age,data = rawData)
summary(linearmodel) #0.0492
