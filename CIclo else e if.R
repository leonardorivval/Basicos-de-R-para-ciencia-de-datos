#rnorm genera un números aleatorios con una distribución normal, te pide N, media y SD
x <- rnorm(1)

#if es igual a while, donde () es la condición TRUE/FALSE y {} es la acción a ejecutar.
#La diferencia es que solamente corre una vez
#Para los casos en que queramos que suceda algo cuando () de if no se cumple se usa else

x <- rnorm(1)
if (x > 1){
  respuesta <- "Mayor que 1"
}else if(x < -1){
    respuesta <- "Entre -1 y 1"
  }else{
    respuesta <- "Menor a -1"
  }
respuesta

x <- rnorm(1, mean= 20, sd= 10)
if(x > 18){
  respuesta <- "Bienvenido al club de los grandes"
}else{
  respuesta <- "Bienvenido al club de los pequeñines"
}
respuesta
