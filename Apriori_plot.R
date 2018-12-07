
sat_all <- hist(cleanData$Satisfaction, main = "Histogram for Satisfaction of all airlines", xlab = "Satisfaction")

ps_all <- hist(cleanData$Price_sensitivity, main= "Histogram for price sensitivity of all airlines",xlab = "Price Sensitivity")

year_all <- boxplot(cleanData$Year_of_flights)

no_all <- hist(cleanData$No_of_flights_pa) 

per_all <- hist(cleanData$Percent_of_flights_with_other_airlines)

date_all <- table(cleanData$Flight_date)

