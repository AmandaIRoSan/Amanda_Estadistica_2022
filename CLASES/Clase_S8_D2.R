# Amanda
# Semana 8
# 10/03/2022

madera <- read.csv("CLASES/BD.est.madera2x2.csv", header = T)

madera$Sp <- as.factor(madera$Sp)

boxplot(madera$Peso_gr ~ madera$Sp)

library(dplyr)

# alfa=0.05
# Ho= la variable peso de la Sp barreta es igual al peso de la muestra teórica
# H1= la variable peso de la Sp barreta es diferente 


bar <- madera %>%
  filter(Sp=="Bar")


# Comparación de una media teórica Mu=8.0 para Sp=Barreta

mean(bar$Peso_gr)

t.test(bar$Peso_gr, mu=8.0)
t.test(bar$Peso_gr, mu=7.5)
t.test(bar$Peso_gr, mu=7.45)
t.test(bar$Peso_gr, mu=7.38)
t.test(bar$Peso_gr, mu=7.4)

# Comparación de una media teórica Mu=8.5 para Sp=Chp

chp <- madera %>%
  filter(Sp=="Chp")

mean(chp$Peso_gr)
t.test(chp$Peso_gr, mu=8.5)
t.test(chp$Peso_gr, mu=7.4)
t.test(chp$Peso_gr, mu=7.48)

# Comparación de una media teórica Mu=12.00 para Sp=D.Eb

# Comparación de una media teórica Mu=11.3 para Sp=D.Eb

# Comparación de una media teórica Mu=8.3 para Sp=Eb

# Comparación de una media teórica Mu=7.9 para Sp=Eb
