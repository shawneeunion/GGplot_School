library(ggplot2)
library(scales)

bulls <- read.csv("GGplot school/GGplot_School//teams_CHI_1996_games_teams_games.csv", header=TRUE)

bulls

str(bulls)

bulls$date1 <- as.character(bulls$Date)

bulls$date2 <- as.Date(bulls$date1, "%a %b %d %Y")

ggplot(data=bulls, aes(x=date2, y=Tm)) + geom_point(colour="red") +
  scale_x_date(labels = date_format("%W/%Y")) +
  expand_limits(y=0) +
  labs(x="\nDate", y="Score", title="Bulls 95-96 Season")
