
library(dplyr)

#Cleaning Satisfaction Column
change <- c(which(grepl("4.00.2.00",rawData$Satisfaction)),which(grepl("4.00.5",rawData$Satisfaction)))
change
rawData$Satisfaction <- replace(rawData$Satisfaction,list = change,4)
table(rawData$Satisfaction)

#Cleaning Flight Date Column



rawData$Departure_delay_in_minutes[is.na(rawData$Departure_delay_in_minutes)] <- 0
sum(is.na(rawData$Departure_delay_in_minutes))

summary(rawData$Departure_delay_in_minutes)

str(rawData$Departure_delay_in_minutes)
