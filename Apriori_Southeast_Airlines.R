
library(lubridate)
library(arules)
library(dplyr)
library(arulesViz)
Southeast <- subset(cleanData,Airline_name=='Southeast Airlines Co. ')

cleanData <- Southeast
cleanData$Satisfaction <- as.numeric(cleanData$Satisfaction)
satisfied <- ifelse(cleanData$Satisfaction < 3.5,"low","high")
satisfied

#hist(cleanData$Price_sensitivity)
pricesensitivity <- ifelse(cleanData$Price_sensitivity<3,"low","high")

#boxplot(cleanData$Year_of_flights)

#hist(cleanData$No_of_flights_pa) # visualize 

Flightspa <- ifelse(cleanData$No_of_flights_pa <40, "low", "high")

#hist(cleanData$Percent_of_flights_with_other_airlines)
percentflightwithotherAirlines <- ifelse(cleanData$Percent_of_flights_with_other_airlines<=10,"low","high")

table(cleanData$Flight_date)

Month <- replicate(length(cleanData$Flight_date),"January")
Month[month(mdy(cleanData$Flight_date))==2] <- "February"
Month[month(mdy(cleanData$Flight_date))==3] <- "March"
head(Month)

#hist(cleanData$Departure_delay_in_minutes)
Departuredelay <- replicate(length(cleanData$Departure_delay_in_minutes),"Average")
Departuredelay[cleanData$Departure_delay_in_minutes<=60] <- "low"
Departuredelay[cleanData$Departure_delay_in_minutes>180] <- "High"

table(cleanData$Arrival_delay_in_minutes)
#hist(cleanData$Arrival_delay_in_minutes)
table(data$Arrival.Delay.in.Minutes)
Arrivaldelay <- replicate(length(cleanData$Arrival_delay_in_minutes),"Average")
Arrivaldelay[cleanData$Arrival_delay_in_minutes<=60] <- "low"
Arrivaldelay[cleanData$Arrival_delay_in_minutes>180] <- "High"

#boxplot(cleanData$Flight_time_in_minutes)
Flight.time <- replicate(length(cleanData$Flight_time_in_minutes),"Average")
Flight.time[cleanData$Flight_time_in_minutes<=100] <- "low"
Flight.time[cleanData$Flight_time_in_minutes >300] <-"High"

#hist(cleanData$Flight_distance)
FlightDist<- replicate(length(cleanData$Flight_distance),"Average")
FlightDist[cleanData$Flight_distance <=1200] <- "less"
FlightDist[cleanData$Flight_distance >1200] <- "More"


df <- data.frame(satisfied, pricesensitivity, Flightspa, percentflightwithotherAirlines,  Month, Departuredelay, Arrivaldelay, Flight.time, FlightDist, cleanData$Airline_status, cleanData$Gender, cleanData$Type_of_travel, cleanData$Class, cleanData$Origin_city, cleanData$Origin_state, cleanData$Destination_city, cleanData$Destination_state, cleanData$Arrival_delay_greater_than_5minutes)
df
df <- as(df, "transactions")              
itemFrequency(df)

rules<-apriori(df,parameter = list(support=0.1, confidence=0.5),appearance = list(default="lhs", rhs=("satisfied=low")))
summary(rules)
inspect(rules)
#hist(quality(rules)$lift)

#plot(rules)

goodrules<- rules[quality(rules)$lift > 2.9] #Airline status = blue and type of travel= personal travel are the ones having hgihest confidence
inspect(goodrules)

#plot(goodrules)

#itemFrequencyPlot(df,support=0.1)
