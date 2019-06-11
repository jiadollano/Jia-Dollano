getwd()
/c/Users/User/CSB/git/sandbox/map
setwd("c:/Users/User/CSB/git/sandbox/map")
getwd()
install.packages("maps")
install.packages("mapdata")
install.packages("ggplot2")
install.packages("ggmap")
install.packages("Rtools")
library(maps)
library(mapdata)
library(ggplot2)
library(ggmap)

help(map)
?map
m<-map("worldHires", xlim=c(116,127), ylim=c(4,21), col="grey", fill=TRUE, lwd=0.5)
map.scale(122,5, relwidth = 0.30, metric = TRUE, ratio = FALSE,cex=0.6)
map.axes()
