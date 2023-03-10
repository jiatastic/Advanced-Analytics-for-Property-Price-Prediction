library(RColorBrewer)
library(leaflet)
library(rgdal)
library(sp)
library(tigris)

rm(list = ls())
india_map <- readOGR("C:/Users/19493/Downloads/data", "IND_adm2")
df <- read.csv("C:/Users/19493/Desktop/House Prediction Project/DF10")

geoid_list <- df$CITY

property_map <- subset(india_map,india_map$NAME_2 %in% geoid_list)  

property_count <- geo_join(property_map,df,"NAME_2","CITY")

popup <- paste0("City Name: ",property_count$NAME_2,"<br>","Number of Properties: ",property_count$COUNT)
pal1 <- colorNumeric("BuPu",domain = property_count$COUNT)

interactive_map <- leaflet(property_count) %>% addProviderTiles("CartoDB.Positron") %>% addPolygons(fillColor = ~ pal1(COUNT),color = "#b2aeae",weight = 1, smoothFactor = 0.2, opacity = 1.0, fillOpacity = 0.7, popup = popup) %>% addLegend(pal= pal1,values= property_count$COUNT,title="The distribution of Properties in India")
interactive_map

