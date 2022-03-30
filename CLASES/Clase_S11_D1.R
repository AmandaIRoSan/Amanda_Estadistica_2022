# Amanda
# Semana 10
# 30/03/2022
# PRUEBA de una muestra en el tiempo

datos <- read.csv("CLASES/mainproduccion.csv", header = T)
datos$Tiempo <- as.factor(datos$Tiempo)

# H0 = no hay diferencia entre la media de los pesos entre las semillas entre el año 2012 y el año 2013.
# H1 = hay diferencia entre la media de los pesos entre las semillas entre el año 2012 y el año 2013.

boxplot(datos$Kgsem ~ datos$Tiempo, col = "lightblue",
        xlab = "Tiempo",
        ylab = "Semilla (kg)")
t.test(datos$Kgsem ~ datos$Tiempo, paired = T)


boxplot(datos$BioRama ~ datos$Tiempo, col = "violet",
        xlab = "Tiempo",
        ylab = "BioRama (Ton)")
t.test(datos$BioRama ~ datos$Tiempo, paired = T)
# se rechaza la hipotesis nula (H0)


boxplot(datos$Germ ~ datos$Tiempo, col="pink",
        xlab = "Tiempo",
        ylab = "Germ (%)")
t.test(datos$Germ ~ datos$Tiempo, paired = T)
# se acepta la hipotesis alternativa

# el numero de alumnos que ingresan a la facultad de medicina.
# el total de carreras por temporada de los redsox



