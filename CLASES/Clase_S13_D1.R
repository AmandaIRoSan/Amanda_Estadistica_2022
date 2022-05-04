# AMANDA
# 27/04/2022 SEMANA 13
# CORRELACIÓN

# observaciones independientes, la correlación es lineal
# r= 1:-1 (co-relación perfecta, pero no ocurre en la naturaleza)
# co-relación positiva: la líenea va hacia arriba (pendiente), los valores de x aumentan los valores de y igual
# co-relación negativa: la línea va hacia abajo, si los valores de x aumenta, los valores de y disminuye.

# EJERCICIO DE CORRERALCIÓN

semilla <- read.csv("CLASES/BaseDeDatos_estadistica.csv", header = T)

# Revisar mediante una gráfica si existe una asociación entre el diámetro y la longitud

plot(semilla$Diametro_mm, semilla$Longitud_mm) # (x,y)

plot(semilla$Diametro_mm, semilla$Peso_gr)

# H0: no hay correlación (asociación) entre el diámetro y el peso
# H1: si hay correlación (asociación) entre el diámetro y el peso

cor.test(semilla$Diametro_mm, semilla$Peso_gr)
# correlación de Pearson (valores paramétricos)

cor.test(semilla$Longitud_mm, semilla$Diametro_mm)

x <- c(10, 8, 13, 9, 11, 14, 6, 4, 12, 7, 5)
y <- c(8.04, 6.95, 7.58, 8.81, 8.33, 9.96, 7.24, 4.26, 10.84, 4.82, 5.68)

x1 <- c(10, 8, 13, 9, 11, 14, 6, 4, 12, 7, 5)
y1 <- c(9.14, 8.14, 8.74, 8.77, 9.26, 8.10, 6.13, 3.10, 9.13, 7.26, 4.74)

x2 <- c(10, 8, 13, 9, 11, 14, 6, 4, 12, 7, 5)
y2 <- c(7.46, 6.77, 12.74, 7.11, 7.81, 8.84, 6.08, 5.39, 8.15, 6.42, 5.73)

x3 <- c(8, 8, 8, 8, 8, 8, 8, 19, 8, 8, 8)
y3 <- c(6.58, 5.76, 7.71, 8.84, 8.47, 7.04, 5.25, 12.5, 5.56, 7.91, 6.8)


cor.test(x, y)
cor.test(x1, y1)
cor.test(x2, y2)
cor.test(x3, y3)

op = par(mfrow= c(2, 2), mar = c(4.5, 4, 1, 1))
plot(x, y, pch= 20) # nube de datos
plot(x1, y1, pch= 20)
plot(x2, y2, pch= 20)
plot(x3, y3, pch= 20)
par(op)
