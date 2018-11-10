
library(dplyr)
library(tidyverse)
data <- rawData
data <- data %>%
  mutate(Satisfaction=ifelse(Satisfaction=="4.00.2.00",4,Satisfaction)) 
data[38898,1] <- 4
rawData <- data
