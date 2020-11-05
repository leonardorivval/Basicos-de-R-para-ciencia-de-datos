#Subconjuntos (subsettings), literalmente son conjuntos formados de un conjunto de datos
#ya sea un vector o una matriz

vector <- c(1,2,3,4,5,6,7,8,9,10)
vector

#Por medio de nombre del vector y las posiciones uno puede generar un subconjunto del vector
vector[c(1,4)]
vector[c(2,3,5,7)]
vector[1]

#Mismo principio aplica para las matrices, pero hay que especificar las filas y columnas
juegos
juegos[1:3,5:10]
juegos[1:2, 1:2]
juegos[1:5, 6:8]
juegos[, c("2007", "2010")]
juegos[,c("2005", "2007")]
juegos[c("KobeBryant", "LeBronJames"),]
juegos[c("ChrisPaul", "DwayneWade", "CarmeloAnthony"),]

#Pero si uno hace lo siguiente uno transforma su subconjunto en un vector a partir de una matriz.
#Todos los anteriores tomaban o la matriz o el vector y el subconjunto era del mismo tipo

juegos[1,]

is.matrix(juegos[1,])
is.matrix(juegos[1,1])

#Esto es debido a que damos solamente una dimensión

#Para evitar esto se hace lo siguiente y nos dará una matriz nuevamente
juegos[1,,drop=FALSE]
is.matrix(juegos[1,,drop=FALSE])
juegos[1,1,,drop=F]
is.matrix(juegos[1,1,drop=FALSE])
