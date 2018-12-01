
#Cleaning Satisfaction Column
change <- c(which(grepl("4.00.2.00",rawData$Satisfaction)),which(grepl("4.00.5",rawData$Satisfaction)))
change
rawData$Satisfaction <- replace(rawData$Satisfaction,list = change,4)
table(rawData$Satisfaction)

#Subsetting cancelled flights  
wasteData <- rawData[which(rawData$Flight_cancelled=='Yes'),]
wasteData

cleanData <- rawData[which(rawData$Flight_cancelled=='No'),]
cleanData

#Replacing NA's in Arrival_delay_in_minutes by 0's
index <- which(is.na(cleanData$Arrival_delay_in_minutes))
cleanData$Arrival_delay_in_minutes <- replace(cleanData$Arrival_delay_in_minutes, is.na(cleanData$Arrival_delay_in_minutes),0)

#Replacing NA's in Flight_time_in_minutes by mean flight time
mean_time <- mean(na.omit(cleanData$Flight_time_in_minutes))
cleanData$Flight_time_in_minutes <- replace(cleanData$Flight_time_in_minutes, is.na(cleanData$Flight_time_in_minutes),mean_time)
