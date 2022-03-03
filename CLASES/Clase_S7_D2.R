# Amanda
# Semana 7
# 03/03/2022

semilla <- read.csv("CLASES/BaseDeDatos_estadistica.csv", header = T)

# Tablas de frecuencia para semillas
numero <- table(semilla$Cond)
numero/6
