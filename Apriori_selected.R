
cleanData$Satisfaction <- as.numeric(as.character(cleanData$Satisfaction))
satisfied <- ifelse(cleanData$Satisfaction < 3.5,"no","yes")
pricesensitivity <- ifelse(cleanData$Price_sensitivity<3,"low","high")
Flightspa <- ifelse(cleanData$No_of_flights_pa <40, "low", "high")
percentflightwithotherAirlines <- ifelse(cleanData$Percent_of_flights_with_other_airlines<=10,"less than 10","more then 10")
Month <- replicate(length(cleanData$Flight_date),"January")
Month[month(mdy(cleanData$Flight_date))==2] <- "February"
Month[month(mdy(cleanData$Flight_date))==3] <- "March"
head(Month)
