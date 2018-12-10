
##association rule mining 
library(lubridate)
library(arules)
library(arulesViz)
library(dplyr)
cleanData$Satisfaction <- as.numeric(as.character(cleanData$Satisfaction))
satisfied <- ifelse(cleanData$Satisfaction < 3.5,"no","yes")

Flightspa <- ifelse(cleanData$No_of_flights_pa <40, "low", "high")

q <- quantile(cleanData$Age, c(0.4, 0.6))
Age <- replicate(length(cleanData$Age), "Average")
Age[cleanData$Age <= q[1]] <- "Low"
Age[cleanData$Age > q[2]] <- "High"

df1 <- data.frame(satisfied, cleanData$Airline_status, cleanData$Type_of_travel,  Flightspa, Age, cleanData$Arrival_delay_greater_than_5minutes)

