getwd()
rm(list=ls())
fid <- read.csv("C:/Users/User/CSB/data_wrangling/sandbox/Turtle_DataSet/Sample_Data6.csv")
fid

library(ggplot2)
ggplot(data=fid) + 
  aes(x= Distance, y = Behaviour) +
  geom_col()

ncol(fid)
colnames(fid)
FIDp <- ggplot(data= fid) +
  aes(x = Behaviour, y = Distance) 

?ggplot
FIDp2 <- FIDp + geom_violin() + theme_classic() + aes(colour = "red")
FIDp2  
FIDp + geom_boxplot()

TurtleArea <- read.csv("C:/Users/User/CSB/data_wrangling/sandbox/D2.csv")
TurtleArea
ncol(TurtleArea)
colnames(TurtleArea)

Distribution <- ggplot(data = TurtleArea) + aes(x = Area) + theme_classic() + aes(fill = "white")
DBplot <- Distribution + geom_bar()
DBplot
