#Establece el Directorio de Trabajo
datos <- read.csv(file.choose())
datos
#Importa los datos en el archivo csv
datos <- _("Secci�n 5 - Pr�ctica.csv")

#Explora los datos
datos
head(datos)      #crevisa las 6 filas superiores
tail(datos, 7) #revisa la �ltimas 7 filas
str(datos)      #revisa la estructura del marco de datos
summary(datos)      #revisa el resumen de los datos

#�Te diste cuenta que hay m�s de un a�o en los datos?
#De la descripci�n del reto sabemos que hay dos: 1960 y 2013

#Filtra el marco de datos
datos1960 <- datos[datos$A�o==1960,]
datos2013 <- datos[datos$A�o==2013,]

#Revisa el n�mero de filas
summary(datos1960) #187 filas
summary(datos2013) #187 filas. Misma cantidad

#Crea los marcos de datos adicionales
adicional1960 <- data.frame(Codigo=c�digo_pa�s, Expectativa.Vida=expectativa_vida_al_nacer_1960)
adicional2013 <- data.frame(Codigo=c�digo_pa�s, Expectativa.vida=expectativa_vida_al_nacer_2013)

#Revisa los res�menes
summary(adicional1960)
summary(adicional2013)

#Combina el par de Marcos de Datos
combinado1960 <- merge(datos1960, adicional1960, by.x="C�digo.Pa�s", by.y="Codigo")
combinado2013 <- merge(datos2013, adicional2013, by.x="C�digo.Pa�s", by.y="Codigo")
#Revisa las nuevas estructuras
str(combinado1960)
str(combinado2013)

#Podemos ver una columna obsoleta en cada uno de los marcos de datos combinados
#La columna "A�o" ya no es requerida. Quit�mosla
combinado1960$A�o <- NULL
combinado2013$A�o <- NULL

#Revisa las estructuras de nuevo
str(combinado1960)
str(combinado2013)

#Hora de la visualizaci�n
library(ggplot2)

#Visualiza el set de datos de 1960
qplot(data=combinado1960, x=Tasa.Fertilidad, y=Expectativa.Vida,
      color=Regi�n,                               #color
      size=I(5), 
      alpha=I(0.6),                               #transparencia
      main="Expectativa de Vida vs Tasa de Fertilidad (1960)" #t�tulo
   )

#visualiza el set de datos de 2013
qplot(data=combinado2013, x=Tasa.Fertilidad, y=Expectativa.vida,
      color=Regi�n,
      size=I(5),
      alpha=I(.5),
      main="Expectativa de Vida vs Tasa de Fertilidad (2013)")






