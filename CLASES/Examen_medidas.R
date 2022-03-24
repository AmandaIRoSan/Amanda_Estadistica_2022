# Amanda
# Semana 10
# 24/03/2022
# EXAMEN DE COMPARACION DE MEDIDAS

# EJERCICO 1

costal <- c(87.7, 80.01, 77.28, 78.76, 81.52, 74.2, 80.71, 79.5, 77.87, 81.94, 80.7, 
            82.32, 75.78, 80.19, 83.91, 79.4, 77.52, 77.62, 81.4, 74.89, 82.95,
            73.59, 77.92, 77.18, 79.83, 81.23, 79.28, 78.44, 79.01, 80.47, 76.23,
            78.89, 77.17, 69.94, 78.54, 79.7, 82.45, 77.29, 75.52, 77.21, 75.99,
            81.94, 80.41, 77.7)


mean(costal)
sd(costal)

t.test(costal, mu=80)
# valor p-value = 0.02271
# media = 78.91136
# se acepta la hipotesis alternativa: La media observada es menor a la declarada en los costales de 80kg.
# grados de libertad = 43
# con la prueba t de una muestra, ya que tiene un 95% de aceptacion.


# EJERCICIO 2

azufre <- c(15.8, 22.7, 26.8, 19.1, 18.5, 14.4, 8.3, 25.9, 26.4, 9.8,
            22.7, 15.2, 23.0, 29.6, 21.9, 10.5, 17.3, 6.2, 18.0, 22.9, 
            24.6, 19.4, 12.3, 15.9, 11.2, 14.7, 20.5, 26.6, 20.1, 17.0,
            22.3, 27.5, 23.9, 17.5, 11.0, 20.4, 16.2, 20.8, 13.3, 18.1)
t.test(azufre, mu=17.5)
# valor p-value = 0.1893
# intervalos de confianza al 95% = 16.87912, 20.53588
# grados de libertad = 39
# se acepta la hipotesis nula
# con la prueba t de una muestra, ya que tiene un 95% de aceptacion.


# EJERCICIO 3

URL <- "https://raw.githubusercontent.com/mgtagle/MCF-202_Agosto_2021/main/TEMPAIRE_DIA.csv"
temp.dia <- read.csv(URL)
mean(temp.dia$temp_media)

t.test(temp.dia$temp_media, mu=24)
# valor p-value = 0.03615
# grados de libertad = 845
# se acepta la hipotesis alternativa
# con la prueba t de una muestra, ya que tiene un 95% de aceptacion.


# EJERCICIO 4

Grupo <- gl(2, 12, labels = c("Fotografia", "Araña"))
Ansiedad <- c(30, 35, 45, 40, 50, 35, 55, 25, 30, 45, 40, 50, 40, 35, 50, 55,
              65, 55, 50, 35, 30, 50, 60, 39)
Datos <- data.frame(Grupo, Ansiedad)
head(Datos)
library(dplyr)

Fotofrafia <- Datos%>%
  filter(Grupo=="Fotografia")
mean(Fotofrafia$Ansiedad) 
Araña <- Datos%>%
  filter(Grupo=="Araña")
mean(Araña$Ansiedad)
boxplot(Datos$Ansiedad ~ Datos$Grupo, col = "violet")

# HIPOTESIS NULA: no hay diferencia en la media de los niveles de ansiedad entre ambos grupos
# HIPOTESIS ALTE: hay diferencia en la media de los niveles de ansiedad entre los dos grupos
# los procedimiento que debe cumplir son pruebas de normalidad con el comando shapiro.test y ver si los datos son normales, para eso tiene que tener un valor p-value mayor a 0.05.

shapiro.test(Fotofrafia$Ansiedad)
shapiro.test(Araña$Ansiedad)
# los datos prsentan una distribución normal

t.test(Fotofrafia$Ansiedad, Araña$Ansiedad, var.equal=T)
# VALOR P-VALUE = 0.1068
# se acepta la hipotesis nula
# no
# grados de libertad = 22
# media Araña = 47