# AMANDA
# 11/08/2022
# EXAMEN


# EJERCICIO 1 -------------------------------------------------------------

geyser <- read.csv("CLASES/erupciones.csv")
plot(geyser$waiting, geyser$eruptions,
     pch=19,
     col= "lightblue",
     xlab = "Tiempo de espera entre erupciones (min)",
     ylab = "Duración de la erupción (min)",
     main = "Geyser Old Faithfull")
mean(geyser$eruptions)
sd(geyser$eruptions)
var(geyser$eruptions)

mean(geyser$waiting)
sd(geyser$waiting)
var(geyser$waiting)

cor.test(geyser$waiting, geyser$eruptions)
geyser.lm <- lm(geyser$eruptions ~ geyser$waiting)
summary(geyser.lm)

valores <- c(80, 40, 45, 53, 61)
-1.874016 +  0.075628 * valores
