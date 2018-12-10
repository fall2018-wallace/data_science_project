
cleanData$Satisfaction <- as.numeric(as.character(cleanData$Satisfaction))
satisfied <- ifelse(cleanData$Satisfaction < 3.5,"no","yes")
pricesensitivity <- ifelse(cleanData$Price_sensitivity<3,"low","high")
Flightspa <- ifelse(cleanData$No_of_flights_pa <40, "low", "high")
