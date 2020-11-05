#Operadores lógicos, aquí se llaman logical y son:

# == igual a 

#TRUE
5 == 5
# FALSE
5 == 4

# != diferente que

#FALSE
5 != 5
#TRUE
5 != 4

# < menor que

#TRUE
5 < 6
#FALSE
6 < 4

# > mayor que 

#FALSE
5 > 6
#TRUE
6 > 5
# <= menor o igual que

#TRUE
10 <= 10
#FALSE
11 <= 10

# >= mayor o igual que

#TRUE
10 >= 10
#FALSE
9 >= 10
# ! no

#FALSE
!(10 > 9)
#TRUE
!(10 > 15)
# | indica disyunción en sentido booleano. Si hay una u otra verdadera

x <- 5 < 6
y <- 5 > 6
z <- 5 < 2
#TRUE
x | y
#FALSE
x | y 

# & indica conjunción, y sólo es TRUE si ambas lo son

#FALSE
x & y 

# isTRUE(x) es para saber si algo es verdadero o no

#FALSE
a <- 5 < 4
isTRUE(a)

