
library(ggplot2)
library(stringr)
library(dplyr)

cleanData$satisfied <- ifelse(cleanData$Satisfaction < 3.5,"no","yes")

# Prepare data: group satisfaction by Airlinestatus
sat_airlinestatus <- aggregate(cleanData$Satisfaction, by=list(cleanData$Airline_status), FUN=mean)  # aggregate
colnames(sat_airlinestatus) <- c("Airline.status", "Satisfaction")  # change column names
sat_airlinestatus <-sat_airlinestatus[order(sat_airlinestatus$Satisfaction), ]  # sort
sat_airlinestatus$Airline.status <- factor(sat_airlinestatus$Airline.status, levels = sat_airlinestatus$Airline.status)  # to retain the order in plot.
head(sat_airlinestatus, 4)


# Draw plot
g1 <- ggplot(sat_airlinestatus, aes(x=Airline.status, y=Satisfaction)) + 
  geom_bar(stat="identity", width=.5, fill="tomato3") + 
  labs(title="Ordered Bar Chart", 
       subtitle="Airline.status VS Average Satisfaction", y= "satisfaction") + 
  theme(axis.text.x = element_text(angle=65, vjust=0.6))

