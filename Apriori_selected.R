
##association rule mining 
library(arules)
library(arulesViz)
library(dplyr)

satisfied <- ifelse(cleanData$Satisfaction < 3.5,"no","yes")

Flightspa <- ifelse(cleanData$No_of_flights_pa <40, "low", "high")

q <- quantile(cleanData$Age, c(0.4, 0.6))
Age <- replicate(length(cleanData$Age), "Average")
Age[cleanData$Age <= q[1]] <- "Low"
Age[cleanData$Age > q[2]] <- "High"

df1 <- data.frame(satisfied, cleanData$Airline_status, cleanData$Type_of_travel,  Flightspa, Age, cleanData$Arrival_delay_greater_than_5minutes)
df1 <- as(df1, "transactions")              
itemFrequency(df1)

rules1<-apriori(df1,parameter = list(support=0.1, confidence=0.5),appearance = list(default="lhs", rhs=("satisfied=no")))
summary(rules1)
inspect(rules1)

arPlot <- plot(rules1)

goodrules1<- rules1[quality(rules1)$lift > 1.8] #Airline status = blue and type of travel= personal travel are the ones having hgihest confidence
inspect(goodrules1)
arGoodrules <- plot(goodrules1)



