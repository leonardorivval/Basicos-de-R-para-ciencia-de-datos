contador <- 0 # el contador inicial, se empieza sin ningún caso entrelas SD
N <- 100000 # número de casos o vector
for(i in rnorm(N)){ 
  if(i > -1 & i < 1){ #la condición a evaluar
    contador <- contador + 1  #se van agregando el número de de casos entre -1 y +1 SD
  }
}
contador/ N  #valor se va acercando al 68.2 de la distribución normal a mayor N
