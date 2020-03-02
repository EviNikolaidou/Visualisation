library(dplyr)
library(ggplot2)
library(scales)


eurovision <- read.csv("eurovision.csv")


eurovision %>%
  filter(Year != 1956) %>%
  ggplot(aes(x= StartNumber, y= Year)) +
  geom_point(cex=6, pch=3, alpha=1.0, color= "Red") +
  scale_x_continuous(breaks = scales::pretty_breaks(n = 26)) +
  scale_y_continuous(breaks = scales::pretty_breaks(n = 15)) +
  xlab("Start Number")+ ylab("Year")+ ggtitle("Does the running order affect the winner?")

