# AMANDA
# 09/02/2022
# semanda 4 Sla de computo

setwd("C:/Users/Usuario.PC17.001/Documents/r (amanda IF)/Amanda_Estadistica_2022/CLASES")
# Importar datos ----------------------------------------------------------

vivero <- read.csv("BD_vivero.csv", header = TRUE)
View(vivero)


# Estadística descriptiva -------------------------------------------------

# Medidas de tendencia central

mean(vivero$IE)
median(vivero$IE)
range(vivero$IE) 
fivenum(vivero$IE) 
 
# representación gráfica
 
boxplot(vivero$IE, horizontal = TRUE, col = "blue") 
hist(vivero$IE, ylim = c(0,12)) 

# tabla de  frecuencia
 
?table 
table(vivero$IE)
ftable(vivero$IE) 
