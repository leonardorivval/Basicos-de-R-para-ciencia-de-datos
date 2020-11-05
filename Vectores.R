vector_double <- c(5, 9, 48, 592)
vector_double

#Funcines con is.algo() verifican que el elemento sea o no de de dicho tipo

is.numeric(vector_double)
is.integer(vector_double)
is.double(vector_double)

vector_integers <- c(5L, 9L, 50L, 60L)

is.numeric(vector_integers)
is.integer(vector_integers)
is.double(vector_integers)

#Debido a que numérico es una categoría que abarca a los double e integer es
#que tenemos que ambos son numeric, pero solamente el primero es double y el 
#segundo es integer

vector_character <- c("Hola", "amigo", "cómo estás?")

is.numeric(vector_character)
is.character(vector_character)

#En el siguiente vector se ilustra el principio que dice que no se pueden
#combinar tipos de datos. El 45 se va a almacenar como "".

vectos_dif_tdatos <- c("jejej", "Fodor", 45, "Dennett")


#Función seq() para generar secuencias como 1:10. Genera secuencias de números
seq(1, 10)

#Si se pone un tercer elemento se modifica la secuencia en función 
#de ese número. De 2 en 2, de 3 en 3, etc.
seq(1, 10, 2)

vector_secuencia <- seq (1, 20, 5)
vector_secuencia

#Función rep() para repetir un elemento N cantidad de veces. Si yo pongo
#(5, 10) repito el 5 10 veces 
rep(5, 10)

vector_rep <- rep(5, 250)
vector_rep

#También podemos repetir datos de tipo character, o incluso vectores
rep(vector_rep, 2)
rep("jeje", 10)
