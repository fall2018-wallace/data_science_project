
linearmodel <- lm(Satisfaction ~ Airline_status,data = rawData)
summary(linearmodel)

















m1<- lm(formula = Satisfaction ~ Airline_status + Type_of_travel,rawData = data)
summary(m1) #r=0.3773
