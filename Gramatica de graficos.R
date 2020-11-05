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

#Estéticas

library(ggplot2)
ggplot(data=datos.peliculas, aes(x=RatingCriticos, y=RatingAudiencia))

#Al aplicar esto anterior solamente se obtiene el eje (x,y), pero no obtenemos nada más
#Esto se debe a que las estéticas solo van a generar la relación entre los datos y el gráfico pero no el gráfico en sí


#Geometrías

ggplot(data=datos.peliculas, aes(x=RatingCriticos, y=RatingAudiencia))+
  geom_point()

#Para agregar color usamos aes()

ggplot(data=datos.peliculas, aes(x=RatingCriticos, y=RatingAudiencia, color=Genero))+
         geom_point()

#Para poder alterar el tamaño de los puntos
ggplot(data=datos.peliculas, aes(x=RatingCriticos, y=RatingAudiencia, color=Genero, size= PresupuestoMillones))+
  geom_point()


#Graficando con Capas
#Primero vamos a convertir nuestro código de ggplot en un objeto

A <- ggplot(data=datos.peliculas, aes(x=RatingCriticos, y=RatingAudiencia, color=Genero, size= PresupuestoMillones))

#Si corremos A tendremos solamente un gráfico sin puntos
A
#Así tendremos de nuevo el último gráfico de la sección anterior
A + geom_point()

#Lo mismo pero con líneas
A + geom_line()

#Podemos combinar las capas, en este caso las línea y los puntos
A + geom_line() + geom_point()

#El orden de las capas es importante como lo ilustra la siguiente gráfica donde no se ven los puntos por ponerlos primero
A + geom_point() + geom_line()


#Sobreescribiendo estéticas

B <- ggplot(data= datos.peliculas, aes(x = RatingCriticos, y = RatingAudiencia, 
                                       size= PresupuestoMillones, color=Genero))
B + geom_point()

#Debido a que geom_point es una capa sobre el objeto, nosotros podemos sobreescribir las estéticas derivadas del objeto

B + geom_point(aes(size=RatingCriticos))

B + geom_point(aes(color=PresupuestoMillones))
#Como se ve, la etiqueta de género que pertenecía a B se mantiene aunque hayamos cambiado el color en la capa. Esto es porque el objeto se mantiene y como una capa de pintura esta no altera al objeto

#Este mismo fenómeno se observa en el siguiente ejemplo, nuestra capa original de estética se mantendrá.
#Se mantuvieron los RatingCriticos, a pesar de que la geometría dice lo contrario
B + geom_point(aes(x= PresupuestoMillones))

#Una solución a esto es por medio de xlab()
B + geom_point(aes(x= PresupuestoMillones)) + xlab("PresupuestoMillones")


#Volviendo al ejemplo de las líneas, podemos modificar su tamaño para que se puedan ver los puntos fácilmente
B + geom_line(size= 1) + geom_point()


#Mapear contra Establecer
C <- ggplot(data= datos.peliculas, aes(x=RatingCriticos, y=RatingAudiencia))
C + geom_point()

#Agregado de color por mapeo y estableciendo
#Mapeo qua involucra el cambio de algo en función de una variable y depende de aes()
C + geom_point(aes(color=Genero))
C + geom_point(aes(size= PresupuestoMillones))

#Estableciendo, es directo y no depende de la variable
C + geom_point(color="Darkgreen")
C + geom_point(color= "Blue")
C + geom_point(size= 4)

#ERROR
C + geom_point(aes(color="Darkgreen"))
C + geom_point(aes(size= 20))
      
#Histogramas y diagramas de densidad
D <- ggplot(data=datos.peliculas, aes(x=PresupuestoMillones)) 
D + geom_histogram(binwidth =  10)

#Agregar color
D + geom_histogram(binwidth =  10, fill ="red") #Establecer
D + geom_histogram(binwidth = 10, aes(fill = Genero))

#Agregar borde
D + geom_histogram(binwidth = 10, aes(fill = Genero), color ="black")

#Gráficos de densidad
D +geom_density()
D +geom_density(aes(fill= Genero))
D +geom_density(aes(fill= Genero), position = "stack")


#Tips de capa inicial
E<- ggplot(data=datos.peliculas, aes(x=RatingAudiencia))
E + geom_histogram(binwidth = 10, fill="White")
E + geom_histogram(binwidth = 10, fill="White", color="pink")

#Otra opción es dejar las estéticas para después
E <- ggplot(data=datos.peliculas)
E + geom_histogram(aes(x=RatingAudiencia),
  binwidth = 10, fill="White", color="pink")
E + geom_histogram(aes(x=RatingCriticos),
                   binwidth = 10, fill="White", color="pink")

#Una última opción es dejar el esqueleto de ggplot sin nada
E <- ggplot()


#Transformaciones estadísticas
#Geom_smooth()
#Mediante estas líneas geom_smooth permite observar patrones que serían complicados de ver cuando los datos están dispersos

G <- ggplot(data= datos.peliculas, aes(x= RatingCriticos, y= RatingAudiencia,
            color= Genero))
G + geom_point() + geom_smooth(fill=NA)

#Geom_boxplot

G2 <- ggplot(data=datos.peliculas, aes(x= Genero, y= RatingCriticos,
                                       color= Genero))
#Otras opciones de geom_boxpot
G2 + geom_boxplot(size= 2) + geom_point()
G2 + geom_boxplot(size=2) + geom_jitter()


#Usando Facetas
H <- ggplot(data=datos.peliculas, aes(x= PresupuestoMillones))
H + geom_histogram(binwidth =10, aes(fill=Genero), color= "Black", size= 1)

#Facetas, por medio de estas podemos tener un histograma, o cualquier geometría, para cada uno de los factores
H + geom_histogram(binwidth =10, aes(fill=Genero), color= "Black", size= 1) +
  facet_grid(Genero~.,scales = "free")

#Facetas con gráficos de dispersión
I <- ggplot(data=datos.peliculas, aes(x=RatingCriticos, y=RatingAudiencia,
            color=Genero))
I + geom_point(size= 3) + facet_grid(.~Año) #Columnas
I + geom_point(size= 3) + facet_grid(Año~.) #Filas
I + geom_point(size= 3) + facet_grid(Genero~Año) #Genero en filas y columnas de Año
I + geom_point(aes(size= PresupuestoMillones)) + facet_grid(Genero~Año) + geom_smooth()


#Coordenandas
J <- ggplot(data=datos.peliculas, aes(x=RatingCriticos, y=RatingAudiencia, 
                                      color=Genero))
J + geom_point()
#Si + xlim() y + ylim() podemos lograr seleccionar una seccion de todo el sistema de coordenadas
J + geom_point() + xlim(50, 100) + ylim(50, 100)

#Sin embargo no siempre es útil, como en el caso de un histograma
K <- ggplot(data=datos.peliculas, aes(x=PresupuestoMillones))
K + geom_histogram(binwidth=10, aes(fill=Genero), color="black", size= 1) +
  ylim(0,50)

#El problema con esto anterior es que se cortan los datos y se pierde mucha información
#Para resolver esto pdemos usar coord_cartesian()
K + geom_histogram(binwidth=10, aes(fill=Genero), color="black", size= 1) +
  coord_cartesian(ylim=c(0,50))

L <- ggplot(data=datos.peliculas, aes(x=RatingCriticos, y=RatingAudiencia, color=Genero))
L + geom_point(aes(size=PresupuestoMillones)) + geom_smooth() +
  facet_grid(Genero~Año) + coord_cartesian(ylim=c(0,100))


#Temas
M <- ggplot(data=datos.peliculas, aes(x=PresupuestoMillones))
N<- M + geom_histogram(binwidth = 10, aes(fill=Genero), color= "black", size=1)
N

#Primero etiquetas de ejes por medios de x y y label
N + xlab("Presupuesto") + ylab("Número de Películas")

#Formato
N + xlab("Presupuesto") + ylab("Número de Películas") +
  theme(axis.title.x = element_text(color = "Darkgreen", size=20),
        axis.title.y = element_text(color= "Red", size=20),
        axis.text = element_text(size=15), #si no pongo .y o .x se modifican ambos
        legend.title=element_text(size=15),
        legend.text = element_text(size= 12),
        legend.position = c(0.98,0.98), #Determina la posición en el gráfico
        legend.justification = c(1,1)) #Ancla un punto de referencia para que no se salga del margen


#Título del diagrama
N + xlab("Presupuesto") + ylab("Número de Películas") +
  ggtitle("Distribución del Presupuesto en Películas") +
  theme(axis.title.x = element_text(color = "Darkgreen", size=20),
        axis.title.y = element_text(color= "Red", size=20),
        axis.text = element_text(size=15), #si no pongo .y o .x se modifican ambos
        legend.title=element_text(size=15),
        legend.text = element_text(size= 12),
        legend.position = c(0.98,0.98), #Determina la posición en el gráfico
        legend.justification = c(1,1), #Ancla un punto de referencia para que no se salga del margen
        plot.title = element_text(color = "darkblue", size = 30, hjust = .5)
        ) 
