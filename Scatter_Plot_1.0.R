library(ggplot2)

data()
USArrests
Seatbelts

head(USArrests)

ggplot(data=USArrests, aes(x=UrbanPop, y=Murder)) + geom_point() +
  labs(x="\n% Urban Population", y="Murder arrests per 100,000", title="Murder by Population, US 1975\n") +
  scale_x_continuous(limits=c(0,100))
