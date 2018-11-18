
mod1 <- lm(Satisfaction ~ Airline_status,data = cleanData)
summary(mod1) #0.1184

mod2 <- lm(Satisfaction ~ Age,data = cleanData)
summary(mod2) #0.0492

mod3 <- lm(Satisfaction ~ Gender,data = cleanData)
summary(mod3) #0.01761

mod4 <- lm(Satisfaction ~ Price_sensitivity,data = cleanData)
summary(mod4) #0.007637

mod5 <- lm(Satisfaction ~ Year_of_flights,data = cleanData)
summary(mod5) #5.284e-05

mod6 <- lm(Satisfaction ~ No_of_flights_pa,data = cleanData)
summary(mod6) #0.05672

mod7 <- lm(Satisfaction ~ Year_of_flights,data = cleanData)
summary(mod7)

