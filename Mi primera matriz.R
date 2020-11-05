# matriz usando matrix(), te pide nrow y ncol

mis.datos <- 1:25
mis.datos

#Ojo, es importante que el número de datos sea igual a nrow * ncol
M <- matrix(mis.datos, nrow = 5, ncol = 5)
M

#Si quisieramos un valor de esta matriz usaríamos lo siguiente
M[1,3]
M[2,4]
M[1.1]
M[3,4]

#matriz usando rbind()

v1 <- c(1,2,3,4,5)
v2 <- c(10,11,12,13,14)
v3 <- c(20,21,22,23,24)

M2 <- rbind(v1,v2, v3)
M2

#matriz con cbind()

M3 <- cbind(v1,v2,v3)
M3
