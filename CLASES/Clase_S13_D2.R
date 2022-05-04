# AMANDA
# 28/04/2022

# EJERCICO 1

speed <- c(2, 3, 5, 9, 14, 24, 29, 34)
abundance <- c(6, 3, 5, 23, 16, 12, 48, 43)

plot(speed, abundance)
cor.test(speed, abundance)
# el valor de correralción es de : 0.8441408, que esta cerca del +1.
# y el valor de p: 0.008393, que es menor que 0.05.

# H1: Existe una correlación positiva entre la velocidad de los arroyos y la abundancia de efímeras.
# H0: No existe una correlación entre la velocidad del arroyo y la abundancia de efímeras.

# Aquí se acepta entonces la H1 (Hipótesis alternativa)


# EJERCICIO 2

suelo <- read.csv("suelo.csv")

cor.test(suelo$pH, suelo$N)
# r: 0.636654
# p-value: 1.149e-06

cor.test(suelo$pH, suelo$Dens)
# r: -0.5890264
# p-value: 1.062e-05

cor.test(suelo$pH, suelo$P)
# r: 0.5910303
# p-value: 9.74e-06

cor.test(suelo$pH, suelo$Ca)
# r: 0.8086293
# p-value: 3.614e-12

cor.test(suelo$pH, suelo$Mg)
# r: -0.3957721
# p-value: 0.005361

cor.test(suelo$pH, suelo$K)
# r: 0.5795727
# p-value: 1.585e-05

cor.test(suelo$pH, suelo$Na)
# r: -0.6932614
# p-value: 4.724e-08

cor.test(suelo$pH, suelo$Conduc)
# r: -0.7648104
# p-value: 2.484e-10