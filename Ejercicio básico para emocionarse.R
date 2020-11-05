mis_datos <- read.csv(file.choose())

install.packages("ggplot2")

ggplot(data=mis_datos[mis_datos$quilates<2.5,], aes(x=quilates, y=precio,color=claridad)) +
  geom_point(alpha=0.1) +
  geom_smooth()
