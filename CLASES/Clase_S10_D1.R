# Amanda
# Semana 10
# 23/03/2022
# PRUEBA DE DOS MUESTRAS


# HIPOTESIS NULA (H0): no hay diferencia entre los pesos entre las variables Ebano y D.Ebano en la base de datos madera
# HIPOTESIS ALT (H1): hay diferencia entre los pesos de  las especies Ebano y D.Ebano en la base de datos madera.
# valor alfa= 0.05

# extraer datos
madera <- read.csv("BD.est.madera2x2.csv", header = T)

library(dplyr)

ebano <-  madera %>%
  filter(Sp=="Ebano")

d.ebano <- madera %>%
  filter(Sp=="D. Ebano")

t.test(ebano$Peso_gr, d.ebano$Peso_gr, var.equal = T)
mean(ebano$Peso_gr)
mean(d.ebano$Peso_gr)

# valor de p-value  < 2.2e-16
# se acepto la hipotesis alternativa: hay diferencia en la media del peso de las observaciones de  Ebano y D.Ebano
 
chp <- madera %>%
  filter(Sp=="Chp")

bar <- madera %>%
  filter(Sp=="Bar")

t.test(chp$Peso_gr, bar$Peso_gr, var.equal = T)
mean(chp$Peso_gr)
mean(bar$Peso_gr)

# valor de p-value = 0.4913
# se acepto la hipotesis nula
# se rechazo la hipotesis alternativa

hist(ebano$Peso_gr, col = "pink")
hist(d.ebano$Peso_gr, col = "red")
hist(chp$Peso_gr, col = "lightblue")
hist(bar$Peso_gr, col = "violet")

boxplot(madera$Peso_gr ~ madera$Sp, col="lightgreen")
boxplot(ebano$Peso_gr, d.ebano$Peso_gr, col = "lightyellow")
boxplot(bar$Peso_gr, chp$Peso_gr, col = "blue")

