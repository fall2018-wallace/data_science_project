
mod1 <- lm(Satisfaction ~ Airline_status,data = cleanData)
summary(mode1) #0.1184

mod2 <- lm(Satisfaction ~ Age,data = cleanData)
summary(mode2) #0.0492

mod3 <- lm(Satisfaction ~ Gender,data = cleanData)
summary(mode3) #0.01761

mod4 <- lm(Satisfaction ~ Price_sensitivity,data = cleanData)
summary(mode4) #0.007637

mod5 <- lm(Satisfaction ~ Year_of_flights,data = cleanData)
summary(mod5)

table(rawData$Satisfaction)
