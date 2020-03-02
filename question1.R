library(dplyr)
library(ggplot2)
library(ggmap)

getwd()


eurovision <- read.csv("eurovision.csv")

eurovision %>%
  group_by(WinCountry)%>%
  filter(n()>1) %>%
  ggplot(aes(x=WinCountry, fill=WinCountry)) +
  geom_bar() +
  xlab("Countries") + ylab("Times") + ggtitle("Countries that won multiple times")+
  theme(axis.text.x = element_text(angle = 70, hjust = 1))


eurovision %>%
  group_by(WinCountry)%>%
  filter(n()>1) %>%
  ggplot(aes(x=Gender, fill= Gender)) +
  geom_bar() +
  xlab("") + ylab("Count") + ggtitle("Most Successful Gender")

eurovision %>%
  group_by(WinCountry)%>%
  filter(n()>1) %>%
  ggplot(aes(x=SongLanguage, fill=SongLanguage)) +
  geom_bar() +
  xlab("Song Language") + ylab("Count") + ggtitle("Most Successful Language")+
  theme(axis.text.x = element_text(angle = 70, hjust = 1))
  

eurovision %>%
  group_by(WinCountry)%>%
  filter(n()>1) %>%
  ggplot(aes(x=SongLanguage, fill=Gender)) +
  geom_bar() +
  xlab("Song Language") + ylab("Count") + ggtitle("Language and Gender Influence on Winners")+
  theme(axis.text.x = element_text(angle = 70, hjust = 1))
