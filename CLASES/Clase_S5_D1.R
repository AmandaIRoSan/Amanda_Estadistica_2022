# Amanda
# Semana 5
# 16/02/2022


url <- paste0("https://raw.githubusercontent.com/mgtagle/",
"PrincipiosEstadistica2021/main/cuadro1.csv")

inventario <- read.csv(url)
summary(inventario)

inventario$Especie <-  as.factor(inventario$Especie) # el comando as.factor convierte
summary(inventario)
inventario$Posicion <- as.factor(inventario$Posicion)
summary(inventario)

# Obtener una tabla de frecuencia para las variables Especie y Posición.
# Usar la función table

freq.sp <- table(inventario$Especie)
freq.sp/sum(freq.sp)*100

freq.psn <- table(inventario$Posicion)
porciento <- freq.psn/sum(freq.psn)*100
sum(porciento)





