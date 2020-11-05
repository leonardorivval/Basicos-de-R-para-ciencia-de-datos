datos.peliculas <- read.csv(file.choose())
head(datos.peliculas)

colnames(datos.peliculas) <- c("Pelicula", "Genero", "RatingCriticos", "RatingAudiencia", "PresupuestoMillones", "Año")
head(datos.peliculas)
tail(datos.peliculas)

str(datos.peliculas)
#Esto no s del curso, pero fue necesario abrir el paquete dplry, un edetor de gramática de datos,
#para así poder poner como factores los datos character del documento proporcionado.
#Lo que hace es usa la función mutate_at() para poder cambiar el tipo de dato de character a factor
library(dplyr)
datos.peliculas <- mutate_at(datos.peliculas, vars(Genero), as.factor)
datos.peliculas <- mutate_at(datos.peliculas, vars(Pelicula), as.factor)
str(datos.peliculas)

summary(datos.peliculas)

#Ahora al parecer nos están enseñand como alterar esto pero sin necesidad del tidyverse 
#Esto mediante factor()
factor(datos.peliculas$Año)
datos.peliculas$Año <- factor(datos.peliculas$Año)
summary(datos.peliculas)
str(datos.peliculas)

#Por esto anterior, podemos ver que pudimos haber hecho lo siguiente de en lugar de alterar los datos mediante dplyr
datos.peliculas$Año <- factor(datos.peliculas$Año)





