contador <- 1
while(contador<12){
  print(contador)
  contador <- contador +1
}

#En esencia lo que está haciendo es poner en () un vector o secuencia de 
#iteraciones y en {} la acción a iterar 
for(i in 1:5){
  print("hola R")
}

for(i in 5:10){
  print(i)
  i <- i + 3
  print(i)
}