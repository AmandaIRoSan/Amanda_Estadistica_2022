# Amanda
# Semana 9
# 16/03/2022
# Revisar datos peso madera 2x2x2
# BD madera
#PRUEBAS DE NORMALIDAD

# Distribución en una sola cola en la gráfica, cuando solo se quiere saber si hay diferencias
# dos colas en la gráfica y alfa= +/-0.025, aqui se especifica si hay una diferencia (< , >)

# Datos paramétricos (valores arriba de 0.05)
# normalidad <- shapiro.test 
# datos homogéneos

madera <- read.csv("BD.est.madera2x2.csv", header = T)

library(dplyr)

# Sp: Barreta
bar <- madera %>%
  filter(Sp=="Bar")
shapiro.test(bar$Peso_gr)
hist(bar$Peso_gr, col = "green")

chp <- madera %>%
  filter(Sp=="Chp")
shapiro.test(chp$Peso_gr)
hist(chp$Peso_gr, col = "violet")

d.eb <- madera %>%
  filter(Sp=="D. Ebano")
hist(d.eb$Peso_gr, col = "blue")
shapiro.test(d.eb$Peso_gr)

Eb <- madera %>%
  filter(Sp=="Ebano")
hist(Eb$Peso_gr, col = "red")
shapiro.test(Eb$Peso_gr)

hist(madera$Peso_gr, col = "yellow")
shapiro.test(madera$Peso_gr)

semilla <- read.csv("BaseDeDatos_estadistica.csv", header = T)
hist(semilla$Peso_gr)
shapiro.test(semilla$Peso_gr)

semilla$Cond <- as.factor(semilla$Cond)

pobre <- semilla %>%
  filter(Cond=="Pobre")
hist(pobre$Peso_gr, col = "pink")
shapiro.test(pobre$Peso_gr)

Q1 <- semilla %>%
  filter(Cond=="Q1")
hist(Q1$Peso_gr, col = "lightblue")
shapiro.test(Q1$Peso_gr)

Q2 <- semilla %>%
  filter(Cond=="Q2")
hist(Q2$Peso_gr, col = "lightyellow")
shapiro.test(Q2$Peso_gr)

Q3 <- semilla %>%
  filter(Cond=="Q3")
hist(Q3$Peso_gr, col = "lightpink")
shapiro.test(Q3$Peso_gr)

Q4 <- semilla %>%
  filter(Cond=="Q4")
hist(Q4$Peso_gr)
shapiro.test(Q4$Peso_gr)


hist(semilla$Longitud_mm)
hist(semilla$Diametro_mm)
shapiro.test(semilla$Longitud_mm)
shapiro.test(semilla$Diametro_mm)
boxplot(semilla$Longitud_mm)
boxplot(semilla$Diametro_mm)
