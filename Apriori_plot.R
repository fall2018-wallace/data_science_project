
sat <- hist(cleanData$Satisfaction, main = "Histogram for Satisfaction of all airlines", xlab = "Satisfaction")

ps <- hist(cleanData$Price_sensitivity, main= "Histogram for price sensitivity of all airlines",xlab = "Price Sensitivity")

year <- boxplot(cleanData$Year_of_flights)

no <- hist(cleanData$No_of_flights_pa) 

per <- hist(cleanData$Percent_of_flights_with_other_airlines)

date <- table(cleanData$Flight_date)

dep <- table(cleanData$Departure_delay_in_minutes)

arr <- table(cleanData$Arrival_delay_in_minutes)

time <- hist(cleanData$Flight_time_in_minutes)
