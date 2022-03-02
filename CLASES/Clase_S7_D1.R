# Amanda
# Semana 7
# 02/03/2022

# ¿Habrá diferencias en la germinación?
# ¿Habrá duferencia en las alturas?

# 6 semanas de monitoreo

# Importar datos

semilla <- read.csv("CLASES/BaseDeDatos_estadistica.csv", header = T)
graf.sem <- boxplot(semilla$Peso_gr)

# Identificar
which(semilla$Peso_gr >40)
semilla[524, ]

# identificar semillas con valores manores al rango
quantile(semilla$Peso_gr, 0.0)
graf.sem$out

which(semilla$Peso_gr <=2.67)

# Identificar los cuantiles
quantile(semilla$Peso_gr, 0.25)
quantile(semilla$Peso_gr, 0.5)
quantile(semilla$Peso_gr, 0.75)
quantile(semilla$Peso_gr, 1)
