# Probemos unas operaciones sencillas
3 + 4
6 + 12
5 + 5 
5 - 5 
3 * 5
(5 + 5) / 2 

# Raíz cuadrada
sqrt(540)

# Exponencial
exp(5)

# Potenciación
5 ^ 10

# pi
pi

# logaritmo
log(pi)

# valores absolutos
abs(-33.5)


adc  <-  pi * (5^2)
adc

a  <-  43

b <- "Cinco"

c <- TRUE

d <- FALSE

class(a)
class(b)
class(c)
class(d)

a + b

c + d

poker <- c(140, -50, 20, -120, 240)

ruleta <- c(-24,-50,100,-350,10)

poker
ruleta

dias <- c("Lunes","Martes","Miércoles","Jueves","Viernes")

names(poker)
names(ruleta)
names(dias)

names(poker)  <- dias
names(ruleta) <- dias    

names(poker)
names(ruleta)

poker
ruleta

poker + ruleta

poker

140-50+20-120+240

sum(poker)

total_poker <-sum(poker)
total_ruleta <-sum(ruleta)

total_poker == total_ruleta

total_poker < total_ruleta

total_poker > total_ruleta

poker[3]
poker["Jueves"]

poker[c(1,3,5)]

poker[2:4]

poker > 0

perdidas <- poker < 0
poker[perdidas]

matrix(1:9, byrow = TRUE, nrow = 3)


new_hope <- c(460.998, 314.4)
empire_strikes <- c(290.475, 247.900)
return_jedi <- c(309.306, 165.8)

box_office <- c(new_hope, empire_strikes, return_jedi)
starwars_matrix <- matrix(box_office, nrow= 3, byrow = TRUE)

box_office

starwars_matrix

region <- c("US", "non-US")
titles <- c("A New Hope", "The Empire Strikes Back", "Return of the Jedi")

rownames(starwars_matrix) <- titles
colnames(starwars_matrix) <- region
starwars_matrix

rowSums(starwars_matrix)

totales <- rowSums(starwars_matrix)

cbind(starwars_matrix, totales)

The_Phantom_Menace <- c(474.500, 552.500)
Attack_of_the_clones <- c(310.700, 338.700)
Revenge_of_the_Sith  <-  c(380.300, 468.500)
taquilla <- c(The_Phantom_Menace, Attack_of_the_clones, Revenge_of_the_Sith)
titles2 <- c("The Phantom Menace", "Attack of the Clones", "Revenge of the Sith")
starwars_matrix2 <- matrix(taquilla, nrow = 3, byrow = TRUE)
colnames(starwars_matrix2) <- region
rownames(starwars_matrix2) <- titles2
starwars_matrix2

rbind(starwars_matrix, starwars_matrix2)

starwars_todas <- rbind(starwars_matrix, starwars_matrix2)

colSums(starwars_todas)


totales_globales <- colSums(starwars_todas)
starwars_globales <- rbind(starwars_todas, totales_globales)
totales <- rowSums(starwars_globales)
starwars_totales <- cbind(starwars_globales, totales)
starwars_totales


starwars_todas[ ,2]

mean(starwars_todas[ ,2])
sum(starwars_todas[ ,2])

starwars_todas / 5

visitantes <- starwars_todas / 5
mean(visitantes)

sexo <- c("Hombre","Mujer","Hombre","Mujer","Mujer","Hombre")
animales <- c("Elefante","Jirafa","Burro","Caballo")
temperaturas <- c("Alta","Baja","Alta","Media","Baja")

factor(sexo)
factor(animales)
factor(temperaturas)

animales <- factor(animales)
levels(animales)

sexo <- c("H", "M", "M", "H", "M")

factor_sexo <- factor(sexo)
factor_sexo

levels(factor_sexo) <- c("Hombre","Mujer")
factor_sexo

summary(factor_sexo)
summary(temperaturas)

Hombre <- factor_sexo[1]
Mujer <- factor_sexo[2]

Hombre < Mujer

rendimiento <- c("medio","bajo","bajo","medio","alto")

factor_rendimiento <- factor(rendimiento)
factor_rendimiento
summary(factor_rendimiento)

?factor

factor_rendimiento <- factor(rendimiento,
                       ordered = TRUE,
                       levels = c("bajo", "medio", "alto"))
factor_rendimiento

summary(factor_rendimiento)

analista2 <- factor_rendimiento[2]
analista4 <- factor_rendimiento[4]
analista2 > analista4

mtcars

head(mtcars)
tail(mtcars)

head(mtcars,10)

str(mtcars)

nombre <- c("Mercurio", "Venus", "Tierra", "Marte", "Jupiter", "Saturno", "Urano", "Neptuno")
tipo <- c("Terrestre", "Terrestre", "Terrestre", 
          "Terrestre", "Gaseoso", "Gaseoso", "Gaseoso", "Gaseoso")
diametro <- c(0.382, 0.949, 1, 0.532, 11.209, 9.449, 4.007, 3.883)
rotacion <- c(58.64, -243.02, 1, 1.03, 0.41, 0.43, -0.72, 0.67)
anillos <- c(FALSE, FALSE, FALSE, FALSE, TRUE, TRUE, TRUE, TRUE)


planetas <- data.frame(nombre,tipo,diametro,rotacion,anillos)
planetas

str(planetas)

# Imprime el diámetro de Mercurio (fila 1, columna 3)
planetas[1,3]
# Imprime los datos para Marte (toda la cuarta fila)
planetas[4,]

# Selecciona los primeros 5 valores de la columna 
# de diámetro
planetas[1:5, "diametro"]

# Selecciona la variable anillos de planetas y guardala como
# anillos


# Imprime la variable

# selecciona todas las columnas para planetas con anillos
planeta[anillos, ]

subset(planetas, subset = anillos)

subset(planeta, subset = diametro < 1)

a <- c (100, 10, 1000)
order(a) 

a[order(a)]

# Usa order() para crear las posiciones
posiciones <- order(planetas$diametro) 

# Usa posiciones para acomodar los planetas por diámetro
planetas[posiciones, ]

vector <- 1:10 
matriz <- matrix(1:9, ncol = 3)
df <- mtcars[1:10,]

# Construye la lista con estos diferentes elementos:
lista<- list(vector, matrix, df)

lista

names(lista) <- c("vector","matriz", "df")
lista

peli <- "El resplandor"
act <- c("Jack Nicholson", "Shelley Duvall","Danny Lloyd","Scatman Crothers","Barry Nelson")
rev <- data.frame(puntaje = c(4.5,4.0,5.0),
                  fuente = c("IMDb1","IMDB2","IMDB3"),
                  comentarios = c("La mejor película de terror que he visto",
                                  "Una película realmente brillante y aterradora de Stanley Kubrick",
                                  "Una obra maestra del horror psicológico"))

peli
act
rev

el_resplandor <- list(película = peli,
                     actores = act,
                     reseñas = rev)
el_resplandor

el_resplandor[[1]]


el_resplandor[["reseñas"]]
el_resplandor$reseñas

el_resplandor[[2]][1]

el_resplandor$actores
el_resplandor[[2]][3]


