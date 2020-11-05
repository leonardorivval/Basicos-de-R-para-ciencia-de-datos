#Una función te permite almacenar todo un código en una frase en que podemos escribir fácilmente.
#Aquí se hace uso de function(){} para generar la función
#Se agregan parámetros en () que permiten flexibilidad a la función. De tal modo que uno puede pedir los datos, y las filas a usar. Una vez que las da estas se acoplan al código dado.
#En nuestro caso se toma data y este se almacena en datos y estos luego son transpuestos para poder ser usados por matplot()
#Así mismo se piden filas para que esas sean las tomadas del data y usadas en el código. Además se pone un valor default tal que se toman automáticamente las fila 1:10 si solamente se da el data

mi_función <-function(data, filas=1:10){
  datos <- data[filas,,drop=FALSE]
  matplot(t(datos), type = "b", pch = 15:18, col = c(1:4, 6) )
  legend("bottomleft",inset = .01, legend = jugadores[filas], pch = 15:18, col = c(1:4, 6))
}

mi_función(sueldos/juegos, 1)
