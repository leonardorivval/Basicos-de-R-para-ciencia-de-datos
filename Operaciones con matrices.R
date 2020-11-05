juegos
colnames(juegos)
rownames(juegos)

tiros_anotados

#Las operaciones en R son muy simples, como con los vectores solamente necesitamos el símbolo
tiros_anotados/juegos
round(tiros_anotados /juegos, 1)

#Esto solamente lo hice para ir analizando los datos de la matriz más a fondo
mean(tiros_anotados)
max(tiros_anotados)
min(tiros_anotados)

minutos_jugados
round(minutos_jugados/juegos, 1)

mean(minutos_jugados)
max(minutos_jugados)
min(minutos_jugados)

#También, aunque no tiene mucho sentido para estos datos, es posible hacer otro tipo de operaciones
minutos_jugados * tiros_anotados
sqrt(minutos_jugados)
minutos_jugados + tiros_anotados


