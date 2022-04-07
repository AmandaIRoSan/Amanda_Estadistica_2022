# AMANDA
# 07/04/2022
# PRUEBA DE T CON ESPECIFICACIÓN

# H0= no existen diferencias entre la media del producto con la media obtenida por el comprador
# H1= existe diferencia entre la media del producto (siendo menor) con la media obtenida por el comprador. 

costal <- c(87.7, 80.01, 77.28, 78.76, 81.52, 74.2, 80.71, 79.5, 77.87, 81.94, 80.7, 
            82.32, 75.78, 80.19, 83.91, 79.4, 77.52, 77.62, 81.4, 74.89, 82.95,
            73.59, 77.92, 77.18, 79.83, 81.23, 79.28, 78.44, 79.01, 80.47, 76.23,
            78.89, 77.17, 69.94, 78.54, 79.7, 82.45, 77.29, 75.52, 77.21, 75.99,
            81.94, 80.41, 77.7)
mean(costal)

# less (menor), greater (mayor)
t.test(costal, mu=80, alternative = "less")
# valor p= 0.01135 (positivo, va al extremo(cola) derecho), se divide el valor de alfa = 0.025 y -0.025
t.test(costal, mu=80)

azufre <- c(15.8, 22.7, 26.8, 19.1, 18.5, 14.4, 8.3, 25.9, 26.4, 9.8,
            22.7, 15.2, 23.0, 29.6, 21.9, 10.5, 17.3, 6.2, 18.0, 22.9, 
            24.6, 19.4, 12.3, 15.9, 11.2, 14.7, 20.5, 26.6, 20.1, 17.0,
            22.3, 27.5, 23.9, 17.5, 11.0, 20.4, 16.2, 20.8, 13.3, 18.1)

t.test(azufre, mu=17.5, alternative = "greater")
t.test(azufre, mu=17.5, alternative = "less")
t.test(azufre, mu=19, alternative = "less")
t.test(azufre, mu=20, alternative = "less")
t.test(azufre, mu=20.5, alternative = "less")
t.test(azufre, mu=20.6, alternative = "less")

URL <- "https://raw.githubusercontent.com/mgtagle/MCF-202_Agosto_2021/main/TEMPAIRE_DIA.csv"
temp.dia <- read.csv(URL)
mean(temp.dia$tmax)
t.test(temp.dia$tmax, mu = 35, alternative = "less")
t.test(temp.dia$tmax, mu = 32, alternative = "less")
t.test(temp.dia$tmax, mu = 30, alternative = "less")

