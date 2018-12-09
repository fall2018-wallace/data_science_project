
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


library(scales)
theme_set(theme_classic())

# Dot Plot for exploring typle of travel
sat_type <- aggregate(cleanData$Satisfaction, by=list(cleanData$Type_of_travel), FUN=mean)  # aggregate
colnames(sat_type) <- c("Type.of.Travel", "Satisfaction")  # change column names
sat_type <-sat_type[order(sat_type$Satisfaction), ]  # sort
sat_type$Type.of.Travel <- factor(sat_type$Type.of.Travel, levels = sat_type$Type.of.Travel)  # to retain the order in plot.
head(sat_type, 4)
#draw plot
g2 <- ggplot(sat_type, aes(x=Type.of.Travel, y=Satisfaction)) + 
  geom_point(col="tomato2", size=3) +   # Draw points
  geom_segment(aes(x=Type.of.Travel, 
                   xend=Type.of.Travel, 
                   y=min(Satisfaction), 
                   yend=max(Satisfaction)), 
               linetype="dashed", 
               size=0.1) +   # Draw dashed lines
  labs(title="Dot Plot", 
       subtitle="Type of travel Vs Satisfaction") +  
  coord_flip()

