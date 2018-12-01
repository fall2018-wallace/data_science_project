
library(dplyr)

#Cleaning Satisfaction Column
change <- c(which(grepl("4.00.2.00",rawData$Satisfaction)),which(grepl("4.00.5",rawData$Satisfaction)))
change
rawData$Satisfaction <- replace(rawData$Satisfaction,list = change,4)
table(rawData$Satisfaction)

#Subsetting cancelled flights  
wasteData <- rawData[which(rawData$Flight_cancelled=='Yes'),]
wasteData

cleanData <- rawData[which(rawData$Flight_cancelled=='No'),]
View(cleanData)

cleanData <- rawData
