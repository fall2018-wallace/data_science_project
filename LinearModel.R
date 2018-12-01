
mod1 <- lm(Satisfaction ~ Airline_status,data = cleanData)
summary(mod1) #0.1185

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

mod14 <- lm(Satisfaction ~ Flight_date,data = cleanData)
summary(mod14) #0.001426

mod15 <- lm(Satisfaction ~ Airline_code,data = cleanData)
summary(mod15) #0.0006697

mod16 <- lm(Satisfaction ~ Airline_name,data = cleanData)
summary(mod16) #0.0006697

mod17 <- lm(Satisfaction ~ Origin_city,data = cleanData)
summary(mod17) #0.0005546

mod18 <- lm(Satisfaction ~ Origin_state,data = cleanData)
summary(mod18) #0.0007328 

mod19 <- lm(Satisfaction ~ Destination_city,data = cleanData)
summary(mod19) #0.0001712 

mod20 <- lm(Satisfaction ~ Destination_state,data = cleanData)
summary(mod20) #0.0003215 

mod21 <- lm(Satisfaction ~ Scheduled_departure_hour,data = cleanData)
summary(mod21) #-6.966e-06 

mod22 <- lm(Satisfaction ~ Departure_delay_in_minutes,data = cleanData)
summary(mod22) #0.004941

mod23 <- lm(Satisfaction ~ Arrival_delay_in_minutes,data = cleanData)
summary(mod23) #0.006879 

mod24 <- lm(Satisfaction ~ Flight_cancelled,data = cleanData)
summary(mod24) #0.001473 

mod25 <- lm(Satisfaction ~ Flight_time_in_minutes,data = cleanData)
summary(mod25) #6.18e-06

mod26 <- lm(Satisfaction ~ Flight_distance,data = cleanData)
summary(mod26) #5.313e-06 

mod27 <- lm(Satisfaction ~ Arrival_delay_greater_than_5minutes,data = cleanData)
summary(mod27) #0.02529 

linearmodel <- lm(Satisfaction ~ Type_of_travel + Airline_status + Arrival_delay_greater_than_5minutes,data = cleanData)
summary(linearmodel)


