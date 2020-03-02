library(dplyr)
library(ggplot2)
library(scales)


eurovision %>%
  filter(Year != 1956 & Points >= 200) %>%
  ggplot(aes(x= Year, y= Song, size= Points)) +
  geom_point (alpha= 0.2 ,color = "darkorchid1") +
  scale_size_continuous(range = c(0.5, 16))+
  xlab("Year") + ylab("Song") + ggtitle("Favorite Songs")+
  theme(axis.text.x = element_text(angle = 70, hjust = 1)) +
  scale_x_continuous(breaks = scales::pretty_breaks(n = 5))

eurovision %>%
  filter(Year > 2007 & Points >= 200) %>%
  ggplot(aes(x= Year, y= Song, size= Points)) +
  geom_point (alpha= 0.2 ,color = "deepskyblue3") +
  scale_size_continuous(range = c(0.5, 16))+
  xlab("Year") + ylab("Song") + ggtitle("Favorite Songs between 2007-2018")+
  theme(axis.text.x = element_text(angle = 70, hjust = 1)) +
  scale_x_continuous(breaks = scales::pretty_breaks(n = 10))

eurovision %>%
  filter(Year > 1975 & Year < 2015  & Points >= 200) %>%
  ggplot(aes(x= Year, y= Song, size= Points)) +
  geom_point (alpha= 0.2 ,color = "forestgreen") +
  scale_size_continuous(range = c(0.5, 16))+
  xlab("Year") + ylab("Song") + ggtitle("Favorite Songs between 1975-2015")+
  theme(axis.text.x = element_text(angle = 70, hjust = 1)) +
  scale_x_continuous(breaks = scales::pretty_breaks(n = 10))
