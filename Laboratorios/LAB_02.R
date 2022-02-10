# Amanda
# 10/02/2022
# Laboratorio 2


# Importar datos ----------------------------------------------------------

getwd()
setwd("C:/Users/isa_r/OneDrive - Universidad Autonoma de Nuevo León/2do. SEMESTRE/PRINCIPIOS DE ESTADÍSTICA/Amanda_Estadistica_2022/Laboratorios")
trees <- read.csv("BDH_1.csv", header = T)
head(trees)

# Ingresar datos directo en la consola

dbh <- c(16.5, 25.3, 22.1, 17.2, 16.1, 8.1, 34.3, 5.4, 5.7, 11.2, 24.1, 14.5, 7.7, 15.6, 15.9, 10, 17.5, 20.5, 7.8, 27.3, 9.7, 6.5, 23.4, 8.2, 28.5, 10.4, 11.5, 14.3, 17.2, 16.8)

# Datos de URL no seguras (http)

prof.url <- "http://www.profepa.gob.mx/innovaportal/file/7635/1/accionesInspeccionvsrm.csv"
Profepa <- read.csv(prof.url)
head(Profepa)
prof_url_2 <- paste0("http://www.profepa.gob.mx/innovaportal/",
                     "file/7635/1/accionesInspeccionvsrm.csv")
profepa2 <- read.csv(prof_url_2)
head(profepa2)

# Datos de URL seguras (https): Dropbox y Github

library(repmis) # VERIFICAR
conjunto <- source()

# Operaciones con la base de datos ----------------------------------------

lab.url <- "https://raw.githubusercontent.com/AmandaIRoSan/Amanda_Estadistica_2022/main/CLASES/BD_vivero.csv"
BD_lab <- read.csv(lab.url)

mean(BD_lab$IE) #El signo de $ informa que necesitamos la columna
sd(BD_lab$IE)

# Selección mediante restricciones

 # igual o mayor (>=), mayor que (>), igual que (==), igual o menor (<=), menor que (<), no igual (!=)