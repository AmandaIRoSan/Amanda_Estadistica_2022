# 06/04/2022
# Prueba t
# importar datos

URL <- "https://datos.abiertos.inecc.gob.mx/Datos_abiertos_INECC/Calidad_del_aire/Concentraciones_historicas_validadas_de_contaminantes_criterio_en_ciudades_mexicanas/Concentraciones_horarias/MTY/MTY-CO-2004.csv"
AÑO.2004 <- read.csv(URL)

aire.MTY <- read.csv("TAREAS/MTY_ENERO_2004.csv")
aire.MTY$Fecha <- as.factor(aire.MTY$Fecha)

boxplot(aire.MTY$NO ~ aire.MTY$Fecha, col = "lightblue",
        xlab = "Fecha",
        ylab = "Oxidos de Nitrogeno (NO)")
t.test(aire.MTY$NO ~ aire.MTY$Fecha, paired = T)


