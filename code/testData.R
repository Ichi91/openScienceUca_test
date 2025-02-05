# Ejercicio práctico: Analizar datos de mayores éxitos de Spotify 2010-2019
# Datos: https://www.kaggle.com/datasets/leonardopena/top-spotify-songs-from-20102019-by-year/
#install packages
#install.packages("dplyr")
#install.packages("tidyr")
# Cargar paquetes
library(tidyr)
library(dplyr)

# Cargar los datos
data <- read.csv("data/top10s.csv")

# Artistas con mas hits
data |> dplyr::count(artist) |> arrange(desc(n))

# Estilos con más exitos
data |> dplyr::count(top.genre) |> arrange(desc(n))

# Se ha ido reduciendo la duración de las canciones a lo largo del tiempo?

plot(dur ~ year, data = data)
title("Trend Song duration")
reg <- lm(dur ~ year, data = data)
abline(reg)
summary(reg)


