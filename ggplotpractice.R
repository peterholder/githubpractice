install.packages("tidyverse")
library(tidyverse)

#National Parks in California
ca <- read.csv("https://raw.githubusercontent.com/OHI-Science/data-science-training/master/data/ca.csv") 

#Acadia National Park
acadia <- read.csv("https://raw.githubusercontent.com/OHI-Science/data-science-training/master/data/acadia.csv")

#Southeast US National Parks
se <- read.csv("https://raw.githubusercontent.com/OHI-Science/data-science-training/master/data/se.csv")

#2016 Visitation for all Pacific West National Parks
visit_16 <- read.csv("https://raw.githubusercontent.com/OHI-Science/data-science-training/master/data/visit_16.csv")

#All Nationally designated sites in Massachusetts
mass <- read.csv("https://raw.githubusercontent.com/OHI-Science/data-science-training/master/data/mass.csv")

head(ca)

install.packages("ggplot")

library(ggplot)
library(ggplot2)

ggplot(data = ca) +
  geom_point(aes(x = year, y = visitors))
