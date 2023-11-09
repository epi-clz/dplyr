
# Modulo 3

# arrange()

# Ordenar los autos en función de mpg de manera ascendente

# sin dplyr
mtcars[order(mtcars$mpg,na.last = T),]


# con dplyr
mtcars %>% arrange(mpg)
mtcars %>% arrange(mpg,cyl)


# Ordenar los autos en función de mpg de manera desc
# sin dplyr
mtcars[order(mtcars$mpg,decreasing = T,na.last = T),]

# con dplyr
mtcars %>% arrange(desc(mpg))


# Ordenar los autos en función de mpg de manera descendente

# sin dplyr
mtcars[order(mtcars$mpg,decreasing = T,na.last = T),]
# con dplyr
mtcars %>% arrange(desc(mpg))


mtcars[order(mtcars$mpg,na.last = T),]
mtcars %>% arrange(mpg)

# Ejercicio1
mtcars %>%
  arrange(mpg)

# Ejercicio2
mtcars %>%
  arrange(mpg, hp)
  
# Ejercicio3
mtcars %>%
  arrange(mpg, desc(hp))


