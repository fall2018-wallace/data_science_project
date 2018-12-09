
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


# Plot for Arrival delay greater than 5 mins
sat_delay <- aggregate(cleanData$Satisfaction, by=list(cleanData$Arrival_delay_greater_than_5minutes), FUN=mean)  # aggregate
colnames(sat_delay) <- c("Arrival.delay.greater.than.5.min", "Satisfaction")  # change column names
sat_delay <-sat_delay[order(sat_delay$Satisfaction), ]  # sort
sat_delay$Arrival.delay.greater.than.5.min <- factor(sat_delay$Arrival.delay.greater.than.5.min, levels = sat_delay$Arrival.delay.greater.than.5.min)  # to retain the order in plot.
head(sat_delay, 4)
#plot
g3 <- ggplot(sat_delay, aes(x=Arrival.delay.greater.than.5.min, y=Satisfaction)) + 
  geom_point(size=3, color="Red") + 
  geom_segment(aes(x=Arrival.delay.greater.than.5.min, 
                   xend=Arrival.delay.greater.than.5.min, 
                   y=0,  yend=Satisfaction)) + 
  labs(title="Lollipop Chart", 
       subtitle="Arrival delay greater than 5 mins  VS  Avg.Satisfaction")


# Histogram on a Gender variable
g4 <- ggplot(cleanData, aes(Gender))
g4 <- g4 + geom_bar(aes(fill=Airline_status), width = 0.5) + 
  theme(axis.text.x = element_text(angle=65, vjust=0.6)) + 
  labs(title="Frequency for Gender", 
       subtitle="Gender across Airline Status") 


q <- quantile(cleanData$Age, c(0.2, 0.75)) #age is cut into quantiles
cleanData$Age_category <- replicate(length(cleanData$Age), "Middle Age")
cleanData$Age_category[cleanData$Age <= q[1]] <- "Young" #if age falls within 1st quartile vector's field  is set as low
cleanData$Age_category[cleanData$Age > q[2]] <- "Old" ##if age falls within 2nd quartile vector's field  is set as high

# Histogram on a Gender variable
g5 <- ggplot(cleanData, aes(Age_category))
g5 <- g5 + geom_bar(aes(fill=satisfied), width = 0.5) + 
  theme(axis.text.x = element_text(angle=65, vjust=0.6)) + 
  labs(title="Frequency for Age Groups", 
       subtitle="Age Groups across Satisfied") 
