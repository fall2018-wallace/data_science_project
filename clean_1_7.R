

#data <- rawData
#data <- data %>%
 # mutate(Satisfaction=ifelse(Satisfaction=="4.00.2.00",4,Satisfaction)) 
#data[38898,1] <- 4
#rawData <- data

##############
change <- c(which(grepl("4.00.2.00",rawData$Satisfaction)),which(grepl("4.00.5",rawData$Satisfaction)))
change
rawData$Satisfaction <- replace(rawData$Satisfaction,list = change,4)
Summary(rawData$Satisfaction)
