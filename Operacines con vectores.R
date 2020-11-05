#Primero definamos unos vectores
x <- c(seq(1:100))
y <- c(seq(100, 200))

#suma de vectores
z <- x + y
z
z+y

#división de vectores
a <- z/c(rep(10,100))
a
a1 <- a/x
a1


#multiplicación de vectores
b <- z * a
b
b1 <- b*z
b1

#sqrt() de vectores
sqrt(z+a)
sqrt(z-a)
sqrt(b+a)
sqrt(y+a)

#Algunas formas de acceder a los valores de los vectores
x1 <- rnorm(5)
x2 <- rnorm(100, mean = 50, sd = 5 )

for (i in x1){
  print(i)
}

for(i in 1:5){
  print(x1[i])
}

for(j in x2){
  print(j)
}

for(j in 1: 50){
  print(x2[j])
}

#Esta siguiente por medio de print es posible pero ineficiente
print(x1[1])
print(x1[2])
print(x1[1:3])


#Acceder a los elementos del vector por métodos de R

N <- 100
a <- rnorm(N)
b <- rnorm(N)
d <- rep(NA, N)

#Vectores

c <- a * b

#Convencionales

for (i in 1:N){
  d[i] <- a[i] * b[i]
}


