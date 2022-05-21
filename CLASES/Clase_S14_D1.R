# AMANDA
# 04/05/2022 SEMANA 14
# CORRELACIÓN: EJERCICIO DE REGRESIÓN

# Y´= alfa + beta(x) "línea de la regresión lineal" 
# REGRESIÓN: valores mínimos y máximos para conocer la media(Y´)
# sumatoria: y´-yobs= 0 residuales
# varianza

semilla <- read.csv("BaseDeDatos_estadistica.csv", header = T)

# PLOT DE DIÁMETRO vs PESO (gr)
plot(semilla$Diametro_mm, semilla$Peso_gr,
     pch=20,
     col= "lightblue",
     xlab = "Diámetro de semilla (mm)",
     ylab = "Peso de semilla (gr)")

# REGRESIÓN <- lm es la función que ayuda a detrminar alfa y beta de la regresión

# lm(variables dependiente, variable independientes)
sem.lm <- lm(semilla$Peso_gr ~ semilla$Diametro_mm)
# alfa (intercept)=-4.93 X=0
# beta= 0.5318

summary(sem.lm)
# *= SINIFICATIVO

semilla$yprima <- round(-4.93370+0.53178*semilla$Diametro_mm, 2)

# AGREGAR LA LÍNEA DE TENDENCIA CENTRAL USANDO abline
plot(semilla$Diametro_mm, semilla$Peso_gr,
     pch=20,
     col= "lightblue",
     xlab = "Diámetro de semilla (mm)",
     ylab = "Peso de semilla (gr)")
abline(sem.lm,
       col= "blue")
text(19, 2, "Y´=-4.934+0.532*x")
text(19, 1.5, "Regresión lineal")
text(19, 1.1, "r^2=0.69 *")

semilla$Ajustados <- round(sem.lm$fitted.values, 2)
sem.lm$coefficients
sum(sem.lm$residuals)

# ENCONTRAR LOS SIGUIENTES VALORES APLICANDO LA FÓRMULA DE REGRESIÓN (18, 12.5, 14, 16, 15)
valores <- c(12.5, 14, 15, 16, 18)
-4.93370+0.53178*valores

