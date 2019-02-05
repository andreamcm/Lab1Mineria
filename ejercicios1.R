# -------------------------------------------------------------------------------------------------------------------------
# Universidad del Valle de Guatemala
# Autores: Andrea Maria Cordon Mayen, 16076
#          Cristopher Sebastian Recinos Ramirez, 16005
# Fecha: 06/02/2019
# -------------------------------------------------------------------------------------------------------------------------

# -------------------------------------------------------------------------------------------------------------------------

# Ejercicio 1:
# ||||||||||||

# Para que funcione en la computadora de Andrea
setwd("~/2019/UVG/Primer Semestre/Minería de Datos/Laboratorios/Laboratorio1") # Se define el working directory
# Para que funcione en la computadora de Cristopher
setwd("") # Se define el working directory

data <- read.csv("tmdb-movies.csv") # Se guardan los datos de la base de datos en la variable data
summary(data) # Se saca un resumen general de los datos

# Summary de todas las variables visiblemente cuantitativas
summary(data$popularity) # Popularity
summary(data$budget) # Budget
summary(data$revenue) # Revenue
summary(data$vote_count) # Vote_count
summary(data$vote_average) # Vote_average
summary(data$budget_adj) # Budget_adj
summary(data$revenue_adj) # Revenue_adj

# -------------------------------------------------------------------------------------------------------------------------

# -------------------------------------------------------------------------------------------------------------------------

# Ejercicio 2:
#|||||||||||||

str(data) # Nos da el tipo de variable de cada columna de la base de datos

# -------------------------------------------------------------------------------------------------------------------------

# -------------------------------------------------------------------------------------------------------------------------

# Ejercicio 3:
# ||||||||||||

# Variables cuantitativas

# id
barplot(data$id) # Sinceramente no nos dice mucho, pero igual es una variable cuantitativa
barplot(data$imdb_id) # Sinceramente no nos dice mucho, pero igual es una variable cuantitativa

# popularity
popumen <- mean(data$popularity)
barplot(data$popularity) #Distribución de la popularidad en una gráfica de caja y bigotes
hist(data$popularity)
abline(v=popumen, col="red")

# budget
barplot(data$budget)
hist(data$budget)

# revenue
barplot(data$revenue)
hist(data$revenue)

# runtime
barplot(data$runtime)
hist(data$runtime)

# release_date
barplot(data$release_date)
hist(data$release_date)

# vote_count
barplot(data$vote_count)
hist(data$vote_count)

# vote_average
barplot(data$vote_average)
hist(data$vote_average)

# release_date
barplot(data$release_year)
hist(data$release_year)

# budget_adj
barplot(data$budget_adj)
hist(data$budget_adj)

# revenue_adj
barplot(data$revenue_adj)
hist(data$revenue_adj)

# ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||

# Variables cualitativas
install.packages("agricolae") # Se instalan las librerías con funciones necesarias para este ejercicio
install.packages("janitor") # Libreria janitor
install.packages("epiDisplay")
table(data$original_title) # Se obtiene una tabla completa del campo original_title
library(janitor) # Para utilizr libreria "janitor"
tabyl(data$original_title, sort=TRUE) # Nos devuelve una tabla con las frecuencias de original_title. Sin embargo, es muy desordenada
library(epiDisplay)
tab1(data$original_title, sort.group = "decreasing", cum.percent = TRUE) # Esta nos devuelve una tabla con la informacion de las frecuencias de todas las peliculas. (Tambiéncon grafico)
  # Con tood lo anterior, se puede utilizar la libreria epiDisplay para ver de mejor manera la frecuencia de las variables cualitativas
tab1(data$original_title, sort.group = "decreasing", cum.percent = TRUE) # Tabla de frecuencia de titulo original de las peliculas
tab1(data$cast, sort.group = "decreasing", cum.percent = TRUE) # Tabla de frecuencia de los actores de las peliculas
tab1(data$homepage, sort.group = "decreasing", cum.percent = TRUE) # Tabla de frecuancia con paginas web
tab1(data$director, sort.group = "decreasing", cum.percent = TRUE) # Tabla de frecuencia de directores
tab1(data$tagline, sort.group = "decreasing", cum.percent = TRUE) # Tabla de frecuencia de
tab1(data$keywords, sort.group = "decreasing", cum.percent = TRUE) # Tabla de frecuencia con palabras clave de las peliculas
tab1(data$overview, sort.group = "decreasing", cum.percent = TRUE) # Tabla de frecuencia con el overview de las peliculas
tab1(data$genres, sort.group = "decreasing", cum.percent = TRUE) # Tabla de frecuencia con los generos
tab1(data$production_companies, sort.group = "decreasing", cum.percent = TRUE) # Tabla de frecuencia con los nombres de las productoras de las peliculas

# -------------------------------------------------------------------------------------------------------------------------

# -------------------------------------------------------------------------------------------------------------------------

# Ejercicio 4:
# ||||||||||||

# 4.1
budget <- data$budget # Se guardan los datos de los presupuestos en la variable budget
order(-data$budget) # Se ordena los datos de la variable budget (no funciono)
budgetordered <- data[order(-data$budget), c(4, 6)] # Se guarda en budgetordered los datos ordenados de forma descendente de los nombres de las peliculas y sus presupuestos
head(budgetordered, 10) # Se seleccionan las primeras 10 filas de budgetordered

# 4.2
revenue <- data$revenue # Se guardan los datos de los ingresos en la variable revenue
order(-data$revenue) # Se ordenan de forma descendente los datos de revenue
revenueOrder <- data[order(-data$revenue), c(5, 6)] # Se guarda en revenueOrder los datos de las peliculas con mas ingresos
head(revenueOrder, 10) # Se seleccionan los primeros 10 datos de los mejores ingresos

# 4.3
votes <- data$vote_count
mostVoted <- data[order(-data$vote_count), c(17, 6)]
head(mostVoted, 1)

# 4.4
leastVoted <- data[order(data$vote_count), c(17, 6)]
head(leastVoted, 10)

# 4.5 
# Peliculas por año
moviesPerYear <- split(data, data$release_year)
head(moviesPerYear, 1)
barplot(data$release_year, horiz=TRUE)

# Mas peliculas en que año

# 4.6



# 4.7
data$
mostPopular <- data[order(-data$popularity), c(6, 14)]
head(mostPopular, 20)

# -------------------------------------------------------------------------------------------------------------------------
