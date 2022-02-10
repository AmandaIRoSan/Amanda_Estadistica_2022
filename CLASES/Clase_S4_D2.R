# Amanda
# 10/02/2022
# Descargar datos de internet

url <- "http://www.profepa.gob.mx/innovaportal/file/7635/1/accionesInspeccionfo.csv"

# (.., fileEncoding = "Latin1")
profepa <- read.csv(url)

# RESTRICCIONES
 # == 15, != 15, >= 15, <= 15

summary(profepa)

profepa$Inspeccion >= mean(profepa$Inspeccion)

# subset

ins.alta <- subset(profepa, profepa$Inspeccion >= mean(profepa$Inspeccion))
ins.baja <- subset(profepa, profepa$Inspeccion <= mean(profepa$Inspeccion))

Est.C <- subset(profepa, profepa$Entidad == "Chiapas")
Est.C <- subset(profepa, profepa$Entidad == "Chihuahua")
Est.C <- subset(profepa, profepa$Entidad == "Coahuila")

Est.C <- profepa[4:8,]
Est.N <- profepa[17:18,]

# Obtener los estados con inspecciones > a 15 <a 35

ins.media <-  subset(profepa, profepa$Inspeccion >= 15 & profepa$Operativo >= 10)

rec.media <- subset(profepa, profepa$Recorrido <= mean(profepa$Recorrido) & profepa$Operativo <= mean(profepa$Operativo))

mean(profepa$Recorrido)
mean(profepa$Operativo)
