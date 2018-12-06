
#calculating satisfaction of single attributes
mod1 <- lm(Satisfaction ~ Airline_status,data = cleanData)
summary(mod1) #0.1187

mod2 <- lm(Satisfaction ~ Age,data = cleanData)
summary(mod2) #0.0492

mod3 <- lm(Satisfaction ~ Gender,data = cleanData)
summary(mod3) #0.0179

mod4 <- lm(Satisfaction ~ Price_sensitivity,data = cleanData)
summary(mod4) #0.00776

mod5 <- lm(Satisfaction ~ Year_of_flights,data = cleanData)
summary(mod5) #5.569e-05

mod6 <- lm(Satisfaction ~ No_of_flights_pa,data = cleanData)
summary(mod6) #0.05706

mod7 <- lm(Satisfaction ~ Percent_of_flights_with_other_airlines,data = cleanData)
summary(mod7) #0.004316

mod8 <- lm(Satisfaction ~ Type_of_travel,data = cleanData)
summary(mod8) #0.3368

mod9 <- lm(Satisfaction ~ No_of_other_loyalty_cards,data = cleanData)
summary(mod9) #0.007809

mod10 <- lm(Satisfaction ~ Shopping_amount_at_airport,data = cleanData)
summary(mod10) #0.0002971

mod11 <- lm(Satisfaction ~ Eating_and_drinking_at_airport,data = cleanData)
summary(mod11) #1.041e-06

mod12 <- lm(Satisfaction ~ Class,data = cleanData)
summary(mod12) #0.002441

mod13 <- lm(Satisfaction ~ Day_of_month,data = cleanData)
summary(mod13) #0.0001514

mod14 <- lm(Satisfaction ~ Flight_date,data = cleanData)
summary(mod14) #0.001182

mod15 <- lm(Satisfaction ~ Airline_code,data = cleanData)
summary(mod15) #0.0006697

mod16 <- lm(Satisfaction ~ Airline_name,data = cleanData)
summary(mod16) #0.0006099

mod17 <- lm(Satisfaction ~ Origin_city,data = cleanData)
summary(mod17) #0.0004748
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


m1<- lm(formula = Satisfaction ~ Airline_status + Type_of_travel ,cleanData)
summary(m1)##0.4084
m2<- lm(formula = Satisfaction ~ Type_of_travel + Class,cleanData)
summary(m2) #r=0.3358

m3 <- lm(formula = Satisfaction ~ Type_of_travel + Price_sensitivity,cleanData)
summary(m3) #0.3364

m4<- lm(formula = Satisfaction ~ Departure_delay_in_minutes + Type_of_travel,cleanData)
summary(m4) #r=0.3424

m5<- lm(formula = Satisfaction ~ Departure_delay_in_minutes + Type_of_travel +Origin_city,cleanData)
summary(m5) #r= 3427

m6 <- lm(formula = Satisfaction ~ Departure_delay_in_minutes + Type_of_travel +Origin_state, cleanData)
summary(m6) #r=0.348

m7 <- lm(formula = Satisfaction ~ Departure_delay_in_minutes + Type_of_travel + Destination_city ,cleanData)
summary(m7) #r=0.3426

m8 <- lm(formula = Satisfaction ~ Arrival_delay_in_minutes + Type_of_travel + Destination_city , cleanData)
summary(m8) #r=0.3459

m9 <- lm(formula = Satisfaction ~ Arrival_delay_greater_than_5minutes + Type_of_travel + Destination_city , cleanData)
summary(m9) #r= 0.3619

m10 <- lm(formula = Satisfaction ~ Arrival_delay_greater_than_5minutes+Type_of_travel + Airline_status ,cleanData)
summary(m10) ##r= 0.4349

m11 <- lm(formula = Satisfaction ~ Departure_delay_in_minutes +Type_of_travel  + Airline_status  ,cleanData)
summary(m11) ##r0.4138
