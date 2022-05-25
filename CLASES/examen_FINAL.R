# AMANDA
# 24/05/2022
# EXAMEN FINAL


# EJERCICIO 1 -------------------------------------------------------------

madera <- read.csv("CLASES/BD_madera_2x2x5.csv", header = T)
library(dplyr)


# media del peso de sp pino
pino <- madera %>%
  filter(Sp=="Pino")
mean(pino$Peso_gr)

# media del peso de sp encino
encino <- madera %>%
  filter(Sp=="Encino")
mean(encino$Peso_gr)

# sumatoria del peso elevada al cuadrado sp pino
sum(pino$Peso_gr^2)

# sumatoria del peso de sp encino
sum(encino$Peso_gr)

# diferencia en gramos que existe entre ambas esecies
en <- mean(encino$Peso_gr)
pn <- mean(pino$Peso_gr)
en - pn

# boxplot del peso de las dos especies
madera$Sp <- as.factor(madera$Sp)

boxplot(madera$Peso_gr ~ madera$Sp, 
        col="lightblue",
        xlab = "Cuadros de madera",
        ylab = "Peso (gr)")
