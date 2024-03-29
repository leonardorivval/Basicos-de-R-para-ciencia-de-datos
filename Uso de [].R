W <- c("a", "b", "c", "d", "e")
W
 
#Corchetes me permiten acceder a los elementos del vector por su orden.
#Si pongo uno accedo al primer elemento, 2 al segundo y as�.
W[1]
W[2]
W[3]

#Si coloco n�meros negativos puedo obtener todos los elementos menos el 
#que corresponde a dicha posici�n. Si -1, entonces todos menos el primero.
W[-1]
W[-3]
W[-5]


#Esto anterior tambi�n es un vector en s� mismo
vector1 <- W[-1]

#Por medio de : podemos delimitar los elementos a los cuales accedemos en sentido
#de un rango
W[1:3]
W[1:2]
W[1:4]

#Si inclu�mos c() dentro de los [] podemos pedir datos espec�ficos
#en el orden que queramos y la cantidad que queramos
W[c(1,2,5,3)]
W[c(5,4,3,2,1,5,5,5)]
W[c(1,1,1,1,1,1,1,5,5,5,5,5,5,5)]

#Al combinar esto con n�meros negativos podemos filtrar los datos
W[c(-1,-2)]
W[c(-1,-3,-4,-5)]
W[c(-1,-5)]
W[c(-1:-2)]
W[c(-1:-4)]
W[c(-2:-4)]
W[c(1:4)]

#extras
x <- c(seq(1,100,4))
x[6]
y <- x[seq(1, 20)]
y
z <- rep(69, 100)
z[-6 : -99]

