library(dplyr)
library(ggplot2)


eurovision <- read.csv("eurovision.csv")

ggplot(eurovision, aes(Year,NoParticipants))+  
	geom_line( colour = "maroon2", size = 1) +  
	xlab("Years") + ylab("Number of Participants")+ ggtitle("The participants through the years")+  
	scale_x_continuous(breaks = scales::pretty_breaks(n = 10)) +  
	scale_y_continuous(breaks = scales::pretty_breaks(n = 10))  

