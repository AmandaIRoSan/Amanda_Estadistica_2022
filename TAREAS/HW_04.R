# AMANDA
# 11/05/2022
# Laboratorio 6: Variables y Datos en R


# Bases de los vectores ---------------------------------------------------

wins = c(52, 51, 47, 47, 42)
losses = c(20, 21, 25, 25, 30)
win_loss_perc = wins/(wins + losses)
win_loss_perc # variables cuantitativas

teams = c("UtJ", "PhS", "DnN", "LAC", "DIM")
# VECTOR de caracteres (variable cualitativa)


# Manipulación de vectores: subconjuntos ----------------------------------

# extraer elementos de un vector utilizando corchetes []
# para acceder a los elementos de unvector. 
# Dentro de los corchetes puede especificar uno o más valores numéricos que correspondan a la(s) posición (es) de los elementos del vector

# PRIMER ELEMENTO DE "wins"
wins[1]
# TERCER ELEMENTO DE "losses"
losses[3]
# ÚLTIMO NOMBRE EN "teams"
teams[5]

length(teams) # da el número de valores
teams[length(teams)]
sort(wins, decreasing = T) # ordena los valores de forma creciente o decreciente
rev(wins) # invierte los valores


# Subconjuntos con índices lógicos ----------------------------------------

# para los subconjuntos lógicos se utiliza un vectorlógico 
# es un tipo particular de vector que toma los valores especiales VERDADERO y FALSO, así como NA(No disponible).

# VICTORIA DE Utah Jazz
wins[teams == "UtJ"]
# EQUIPOS CON VICTORIAS > 40
teams[wins > 40]
# NOMBRE DE LOS EQUIPOS CON DERROTAS ENTRE 10 Y 29
teams[losses >= 10 & losses <= 29]


# Factores y variables cualitativas ---------------------------------------

# VECTOR NUMÉRICO
num_vector <- c(1, 2, 3, 1, 2, 3, 2)
# CREAR UN FACTOR APARTIR DE num_vector
first_factor <- factor(num_vector)
first_factor

#  tomar el vector teams y convertirlo como factor
teams = factor(teams)
teams


# Secuencias --------------------------------------------------------------

# OPERADOR DOS PUNTOS :
1:5
1:10
-3:7
10:1
# FUNCIÓN SECUENCIA
seq(from = 1, to = 10)
seq(from = 1, to = 10, by = 1)
seq(from = 1, to = 10, by = 2)
seq(from = -5, to = 5, by = 1)


# Vectores repetidos ------------------------------------------------------

rep(1, times = 5) # repetir 1 cinco veces
rep(c(1, 2), times = 3) # repetir 1 y 2 tres veces
rep(c(1, 2), each = 2)
rep(c(1, 2), length.out = 5)
rep(c(3, 2, 1), times = 3, each =2)


# De vectores a estructura tabular (data frame) ---------------------------

dat = data.frame(
  Teams = teams,
  Wins = wins,
  Losses = losses,
  WLperc = win_loss_perc
  )
dat

# extraer los valores en la columna teams usando $
dat$Teams
#  utilizar la notación de corchetes en la columna extraída como con cualquier tipo de vector
dat$Wins[1]
dat$Wins[5]

# Del mismo modo, puede hacer subconjuntos lógicos:

# Victorias del equipo Utah
dat$Wins[dat$Teams =='UtJ']
# equipos con victorias > 40
dat$Teams[dat$Wins > 40]
# nombre de los equipos con derrotas entre 10 y 29
dat$Teams[dat$Losses >= 10 & dat$Losses <= 29]


# Tu Turno ----------------------------------------------------------------

Teams = teams = c("UtJ", "PhS", "DnN", "LAC", "DIM", "PTB", "LAL", "MeG", 
                  "GSW", "SAS", "NOP", "SaK", "MiT", "OCT", "HoR")
Teams = factor(Teams)
Wins = c(52, 51, 47, 47, 42, 42, 42, 38, 39, 33, 31, 31, 23, 22, 17)
Losses = c(20, 21, 25, 25, 30, 30, 30, 34, 33, 39, 41, 41, 49, 50, 55)
Win_Loss_perc = Wins / (Wins + Losses)
Games_Behind = Wins[1] - Wins
Points_Scored = c(116.4, 115.3, 115.1, 114.0, 112.4, 116.1, 109.5, 113.3, 113.7, 111.1, 114.6, 113.7, 112.1, 105.0, 108.8)
Points_Against = c(107.2, 109.5, 110.1, 107.8, 110.2, 114.3, 106.8, 112.3, 112.7, 112.8, 114.9, 117.4, 117.7, 115.6, 116.7)
Rating = c(8.97, 5.67, 4.82, 6.02, 2.26, 1.81, 2.77, 1.07, 1.10, -1.58, -0.20, -3.45, -5.25, -10.13, -7.50)

Basquet = data.frame(
  Teams = Teams,
  W = Wins,
  L = Losses,
  W_L = Win_Loss_perc,
  GB = Games_Behind,
  PS_G = Points_Scored,
  PA_G = Points_Against,
  SRS = Rating)
Basquet
sort(Basquet$PS_G)
sort(Basquet$PS_G, decreasing = T)
sort(Points_Scored)
sort(Points_Scored, decreasing = T)
