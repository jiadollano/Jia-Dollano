getwd()
setwd("C:/Users/User/CSB/r/sandbox")
getwd()
getwd()
setwd("C:/Users/User/CSB/data_wrangling/sandbox/")
getwd()
setwd(dirname(rstudiopai::getActiveDocumentContext()$path))


library(tidyverse)

popsize <- read_tsv("../data/FauchaldEtAl2017/pop_size.csv")
ndvi <- read_tsv("../data/FauchaldEtAl2017/ndvi.csv")
seaice <- read_tsv("../data/FauchaldEtAl2017/sea_ice.csv")
snow <- read_tsv("../data/FauchaldEtAl2017/snow.csv")
seaice
seaice <- seaice %>% gather(Month, Cover, 3:14)
seaice

ggplot(data=popsize)
ggplot(data=popsize) +
  aes(x = Year, y = Pop_Size, 
      colour = Herd)
ggplot(data=popsize) +
  aes(x = Year, y = Pop_Size, 
      colour = Herd) +
  geom_point() + 
  geom_line()
ggplot(data = ndvi) +
  aes(x = NDVI_May) +
  geom_histogram()
ggplot(data = ndvi, aes(x = NDVI_May)) +
  geom_histogram()
ggplot(data = ndvi) + 
  geom_histogram(aes(x = NDVI_May))
ggplot(data = ndvi) +
  aes (x = NDVI_May) +
  geom_density()

pl <- ggplot(data = ndvi) +
  aes(x = Herd, y = NDVI_May)
pl + geom_boxplot()
pl + geom_violin()
pl + geom_boxplot() + aes(fill = Herd)

ggplot(data = seaice %>%
         filter(Herd == "WAH")) +
  aes(x = Year) +
  geom_bar()
ggplot(data = seaice %>%
         filter(Herd == "WAH",
                Year == 1990)) +
  aes(x = Month, y = Cover) +
  geom_col()

seaice$Month <- factor(seaice$Month,
                       month.abb)
ggplot(data = seaice %>%
         filter(Herd == "WAH",
                Year == 1990)) +
  aes(x = Month, y = Cover) +
  geom_col()

pl <- ggplot(data = popsize %>% 
              filter(Herd == "WAH")) +
  aes(x = Year,y = Pop_size) +
  geom_point()

show(pl)
pl + geom_smooth()

stats <- popsize %>%
  filter(Herd %in% c("GRH", "PCH")) %>%
  group_by(Herd) %>%
  summarise(
    meanPopSize= mean(Pop_Size),
    SD = sd(Pop_Size),
    N = n(),
    SEM = SD/sqrt(N),
    CI = SEM * qt(0.975, N-1))
stats
ggplot(data = stats) +
  aes(x = Herd, y = meanPopSize) +
  geom_col()

limits <- aes (ymax = stats$meanPopSize + stats$CI,
               ymin = stats$meanPopSize - stats$CI)

ggplot(data = stats) +
  aes(x = Herd, y = meanPopSize) +
  geom_col()
geom_errorbar(limits, width = .3)


#scatterplot!!!
#2 

snow <- snow %>% gather (Year)
snow
stats <- snow %>% 
  filter(Year %in% c("1970", "1971", 45:3)) %>%
  group_by(Year) %>%
  summarise(
    meanPerc_snowcover= mean(Perc_snowcover),
    meanWeek_snowmelt= mean(Week_snowmelt))
stats

ggplot (data = snow %>%
  aes(x = meanWeek_snowmelt, y = meanPerc_snowcover) +
  geom_col())
pl <- ggplot(data = snow %>% +
  aes(x = meanWeek_snowmelt, y = meanPerc_snowcover)
  geom_point()



getwd()
setwd("C:/Users/User/CSB/data_wrangling/sandbox/Turtle_DataSet")
getwd()
