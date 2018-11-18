
linearmodel <- lm(Satisfaction ~ Airline_status + No_of_flights_pa,data = rawData)
summary(linearmodel) #0.1184

linearmodel <- lm(Satisfaction ~ Day_of_month,data = rawData)
summary(linearmodel) #0.0492

table(rawData$Satisfaction)
