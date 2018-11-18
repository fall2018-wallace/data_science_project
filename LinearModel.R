
mode1 <- lm(Satisfaction ~ Airline_status,data = cleanData)
summary(mode1) #0.1184

mode2 <- lm(Satisfaction ~ Age,data = cleanData)
summary(mode2)

mode2 <- lm(Satisfaction ~ Day_of_month,data = cleanDataData)
summary(mode2) #0.0492


table(rawData$Satisfaction)

m3<- lm(formula = Satisfaction ~ Airline_status + Type_of_travel,cleanData)
summary(m3)
