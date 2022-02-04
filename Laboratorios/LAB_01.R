# Amanda
# 02/02/2022
# Laboratorio 1


# Primer contacto con la consola de R -------------------------------------


# Gastos totales
300 + 240 + 1527 + 400 + 1500 + 1833

celular <- 300
celular
transporte <- 240
comestibles <- 1527
gimnasio <- 400
alquiler <- 1500
otros <- 1833

total.gastos <- celular + transporte + comestibles + gimnasio + alquiler + otros

# gastos en un semestre (5 meses)

total.gastos * 5

# gastos en un año (10 meses)

total.gastos * 10


# Nombre de los objetos ---------------------------------------------------

yo_uso_guion_bajo <- 5
otras.personas.usan.punto <- 10
OtrosUsanMayusculas <- 1

# no puede iniciar con un número
# no puede iniciar con guión bajo
# no puede contener coma
# no puede contener espacios 


# Funciones ---------------------------------------------------------------

# valor absoluto (absolute valve)
abs(10)
abs(-4)

# Raíz cuadrada (square root)
sqrt(9)

# logaritmo natural (natural logarithm)
log(2)

# Comentarios en R --------------------------------------------------------

# este es un comentario 
# este es otro comentario
2 * 9
4 + 5 # también se puede colocar un comentario

# R distingue mayúsculs y minúsculas --------------------------------------

# Detectar mayúsculas y minúsculas

celular <- 300
Celular <- -300
CELULAR <- 8000

celular + Celular

CELULAR - celular

# Obtener ayuda -----------------------------------------------------------

# Docuemtación acerca de la función abs
help(abs)
?abs

# Documentación acerca de la función mean
help(mean)
?mean

# buscar absolute
help.search("absolute")

# Alternativamente
??absolute

# Autoevaluación ----------------------------------------------------------

gastos <- c(celular, transporte, comestibles, gimnasio, alquiler, otros)

barplot(gastos)

help(sort)
sort(gastos, decreasing = TRUE )

barplot(sort(gastos, decreasing = TRUE))

# Parte II Variables ------------------------------------------------------

# Problema 1

# Tipo de variables (cualitativas o cuantitativas)
 
 # + Nombre de estudiante (cualitativa)
 # + Fecha de nacimiento  (cualitativa)
 # + Edad  (cuantitativa)
 # + Dirección de casa  (cualitativa) 
 # + Número de teléfono  (cualitativa)
 # + Área de estudio  (cualitativa)
 # + Grado de año universitario  (cuantitativa)
 # + Puntaje en la prueba de mitad de periodo (100 puntos posibles) (cuantitativa)
 # + Calificación general: A, B, C, D, F.  (cualitativa)
 # + Tiempo (en min.) para completar la prueba final de MFC 202.  (cuantitativa)
 # + Número de hermanos  (cuantitativa)

# Problema 2



