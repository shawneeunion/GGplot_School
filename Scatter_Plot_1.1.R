library(ggplot2)

data()
USArrests
Seatbelts

head(USArrests)

ggplot(data=USArrests, aes(x=UrbanPop, y=Murder)) + geom_point(shape=2, size=5, color="#BD0D18", alpha=.5) +
  labs(x="\n% Urban Population", y="Murder arrests per 100,000", title="Murder by Population, US 1975\n") +
  scale_x_continuous(limits=c(0,100))
