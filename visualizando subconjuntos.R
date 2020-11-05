#Visualizar los subconjunos

subconjunto.datos <- minutos_jugados[1:3,]

matplot(t(subconjunto.datos), type = "b", pch = 15:18, col = c(1:4, 6))
legend("bottomleft", inset = .01, legend = jugadores[1:3], pch = 15:18, col = c(1:4, 6))

#Si quisieramos solamente ver al primer jugador

un.jugador <- minutos_jugados[1,,drop=FALSE]
matplot(t(un.jugador), type = "b", pch = 15:18, col = c(1:4, 6) )
legend("bottomleft",inset = .01, legend = jugadores[1], pch = 15:18, col = c(1:4, 6))
