
##association rule mining 
library(arules)
library(arulesViz)

satisfied <- ifelse(cleanData$Satisfaction < 3.5,"no","yes")

Flightspa <- ifelse(cleanData$No_of_flights_pa <40, "low", "high")

q <- quantile(cleanData$Age, c(0.4, 0.6))
Age <- replicate(length(cleanData$Age), "Average")
Age[cleanData$Age <= q[1]] <- "Low"
Age[cleanData$Age > q[2]] <- "High"



