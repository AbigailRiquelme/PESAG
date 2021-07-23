dirabi <- "C:\\Users\\Abi\\Desktop\\PESAG"
setwd(dirabi)


#dialogue 

china <- flujos.monetarios.netos.inversion.extranjera.directa$china


plot.ts(china)

polbanks<-base_de_datos[-1,]

lender_CBD<-which(base_de_datos$LENDER=="CDB")

a<-base_de_datos[c(1,2,5,7,9,12),]

plot.default(base_de_datos[,5])


# mapas 

install.packages('Rcpp')
library(Rcpp)

install.packages("sf")
library(sf)
library(ggplot2)

# descargamos los mapas 

provincias <- readRDS("gadm36_ARG_1_sf.rds")

ggplot(provincias) +
  geom_sf(fill = "greenyellow", color = "black")


# Descargamos los datos de las exportaciones por provincia 


# xportaciones argentina - china 2007 vs 2020

expo_07a09 <- Exportaciones_por_provincia_mapas_

expo_07 <- Exportaciones_por_provincia_mapas_[2:28,]

#cambiamos el nombre de la columna de provincias 

colnames(expo_07)[1] <- "NAME_1"

colnames(expo_07)[2] <- "dolares"

# Es la misma base solo que importo la segunda hoja 

expo_18a20 <- Exportaciones_por_provincia_mapas_

# 2007

# Agregamos los datos de las exportaciones en 2007 a la base de datos de los mapas 

a <- merge(x=provincias, y=expo_07[,1:2], by = "NAME_1", all=TRUE)

nuevabase <- merge(x=provincias, y=expo_07[,1:2], 
      by = c("NAME_1","Descripción ???")) 


ggplot(data = a) +
  geom_sf(aes(fill = dolares))




