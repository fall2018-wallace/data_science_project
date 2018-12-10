
##association rule mining 
library(lubridate)
library(arules)
library(arulesViz)
library(dplyr)
cleanData$Satisfaction <- as.numeric(as.character(cleanData$Satisfaction))
satisfied <- ifelse(cleanData$Satisfaction < 3.5,"no","yes")
pricesensitivity <- ifelse(cleanData$Price_sensitivity<3,"low","high")
Flightspa <- ifelse(cleanData$No_of_flights_pa <40, "low", "high")
percentflightwithotherAirlines <- ifelse(cleanData$Percent_of_flights_with_other_airlines<=10,"less than 10","more then 10")

Departuredelay <- replicate(length(cleanData$Departure_delay_in_minutes),"Average")
Departuredelay[cleanData$Departure_delay_in_minutes<=60] <- "low"
Departuredelay[cleanData$Departure_delay_in_minutes>180] <- "High"