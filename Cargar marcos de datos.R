?read.csv()

#Método 1 o por selección manual del archivo
datos <- read.csv(file.choose())
datos

#Método 2 o por directorio de trabajo (working directory)
getwd()
?setwd()
#NOTA, se debe reemplazar \ por \\, si no es incapaz de encontrar la dirección!!!!!
setwd("C:\\Users\\Auch\\Downloads\\Datos de trabajo")
getwd()
rm(datos)
datos <-read.csv("DatosDemograficos.csv")


#Explorando los datos
datos

#Número de filas y columnas del archivo mediante nrow() y ncol()
nrow(datos)
ncol(datos)

#Para ir visualizando cómo van a estar acomodados los datos, o querer ver el nombre de las columnas rápidamente
#Se puede usar head() que da las primeras 6 filas, o tail() que da las últimas 6.
head(datos)
tail(datos)

#Como se dijo, por default te da 6 filas, pero se puede decidir el N de filas
head(datos, 15)
head(datos, 40)
tail(datos, 4)
tail(datos, 2)

#Para saber la estructura del marco de datos. Esto nos indica el tipo de datos, los códigos de las variables,
#si hay factores (variables con N niveles), el # de filas y columnas, etc.
str(datos)

#Este hace un resumen por columnas de los datos, incluse te dad mín, máx, 1° y 3° intercuartil, mediana, y media
summary(datos)


