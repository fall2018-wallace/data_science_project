
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

mod7 <- lm(Satisfaction ~ Percent_of_flights_with_other_airlines,data = cleanData)
summary(mod7) #0.004261

mod8 <- lm(Satisfaction ~ Type_of_travel,data = cleanData)
summary(mod8) #0.335

mod9 <- lm(Satisfaction ~ No_of_other_loyalty_cards,data = cleanData)
summary(mod9) #0.007805

mod10 <- lm(Satisfaction ~ Shopping_amount_at_airport,data = cleanData)
summary(mod10) #0.0002997

mod11 <- lm(Satisfaction ~ Eating_and_drinking_at_airport,data = cleanData)
summary(mod11) #-4.367e-06

mod12 <- lm(Satisfaction ~ Class,data = cleanData)
summary(mod12) #0.002526

mod13 <- lm(Satisfaction ~ Day_of_month,data = cleanData)
summary(mod13) #0.0001875
