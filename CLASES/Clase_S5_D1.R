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
porciento <- freq.sp/sum(freq.sp)*100
sum(porciento)

freq.psn <- table(inventario$Posicion)
freq.psn/sum(freq.psn)*100

# Porcentaje de posición

por.pos <- freq.psn/sum(freq.psn)*100
barplot(freq.sp, col = "blue", las =1, border = NA)
barplot(porciento, col = "red", las =1)

barplot(freq.psn, las =1, col = "lightblue", border = NA)
barplot(por.pos, las =1, col = "lightyellow", border = NA)

pie(freq.psn, col = topo.colors(4))
pie(por.pos, col = topo.colors(4), labels = paste(levels(inventario$Posicion), por.pos, "%"))

pie(freq.sp, col = topo.colors(3), labels = paste(levels(inventario$Especie), freq.sp, "ind"))

