# Amanda
# 10/02/2022
# Laboratorio 2


# Importar datos ----------------------------------------------------------

getwd()

# Datos de URL no seguras (http)

prof.url <- "http://www.profepa.gob.mx/innovaportal/file/7635/1/accionesInspeccionvsrm.csv"
a.profepa <- read.csv(prof.url)

# Datos de URL seguras (https): Dropbox y Github


# Operaciones con la base de datos ----------------------------------------

lab.url <- "https://raw.githubusercontent.com/AmandaIRoSan/Amanda_Estadistica_2022/main/CLASES/BD_vivero.csv"
BD_lab <- read.csv(lab.url)

mean(BD_lab$IE) #El signo de $ informa que necesitamos la columna
sd(BD_lab$IE)

# Selección mediante restricciones

 # igual o mayor (>=), mayor que (>), igual que (==), igual o menor (<=), menor que (<), no igual (!=)