library(dplyr)
library(ggplot2)
library(scales)


getwd()


eurovision <- read.csv("eurovision.csv", stringsAsFactors= FALSE)


eurovision %>%
  group_by(RunnerUp)%>%
  filter(n()>1) %>%
  filter(Year != 1956 & Year != 1969) %>%
  ggplot(aes(x=RunnerUp, fill=RunnerUp)) +
  geom_bar() +
  xlab("Countries") + ylab("Times") + ggtitle("Countries that almost win")+
  theme(axis.text.x = element_text(angle = 70, hjust = 1))+
  scale_y_continuous(breaks = scales::pretty_breaks(n = 15))

