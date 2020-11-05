?matplot()
matplot(tiros_anotados)

tiros_anotados

# t() nos permite transponer matrices, que no es otra cosa que poner lo que está como filas como columnas y visceversa
x <- t(tiros_anotados) 

#Una vez con la matriz transpuesta podemos usa matplot() que la necesita así
#El type= indica que vamos a usar puntos y lineas
#pch= indica el tipo puntos a usar
#col= finalmente nos dicta los colores, donde 1:4 indica el rango de los colores a usar (son cíclicos por eso se especifica)
matplot(x, type="b", pch=15:18, col=c(1:4, 6))

#Luego, como nuestros colores no indican el jugador necesitamos una leyenda que lo marque
#Primero se pone la posición
#Posteriormente se pone inset= para indicar la distancia de la posición inicial indicada previamente y lo que se quier que indique la leyenda
#Luego ponemos los colores de manera idéntica al matplot(), además del pch
#Finalmente solamente se indica la posición
legend("bottomleft", inset = .01, legend = jugadores, col=c(1:4, 6),pch=15:18, horiz = F)


# t() nos permite transponer matrices, que no es otra cosa que poner lo que está como filas como columnas y visceversa
x <- t(tiros_anotados/juegos) 

#Una vez con la matriz transpuesta podemos usa matplot() que la necesita así
#El type= indica que vamos a usar puntos y lineas
#pch= indica el tipo puntos a usar
#col= finalmente nos dicta los colores, donde 1:4 indica el rango de los colores a usar (son cíclicos por eso se especifica)
matplot(x, type="b", pch=15:18, col=c(1:4, 6))

#Luego, como nuestros colores no indican el jugador necesitamos una leyenda que lo marque
#Primero se pone la posición
#Posteriormente se pone inset= para indicar la distancia de la posición inicial indicada previamente y lo que se quier que indique la leyenda
#Luego ponemos los colores de manera idéntica al matplot(), además del pch
#Finalmente solamente se indica la posición
legend("bottomleft", inset = .01, legend = jugadores, col=c(1:4, 6),pch=15:18, horiz = F)

# t() nos permite transponer matrices, que no es otra cosa que poner lo que está como filas como columnas y visceversa
x <- t(tiros_anotados/tiros_intentados) 

#Una vez con la matriz transpuesta podemos usa matplot() que la necesita así
#El type= indica que vamos a usar puntos y lineas
#pch= indica el tipo puntos a usar
#col= finalmente nos dicta los colores, donde 1:4 indica el rango de los colores a usar (son cíclicos por eso se especifica)
matplot(x, type="b", pch=15:18, col=c(1:4, 6))

#Luego, como nuestros colores no indican el jugador necesitamos una leyenda que lo marque
#Primero se pone la posición
#Posteriormente se pone inset= para indicar la distancia de la posición inicial indicada previamente y lo que se quier que indique la leyenda
#Luego ponemos los colores de manera idéntica al matplot(), además del pch
#Finalmente solamente se indica la posición
legend("bottomleft", inset = .01, legend = jugadores, col=c(1:4, 6),pch=15:18, horiz = F)



