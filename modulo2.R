

# Modulo 2

# filter()

# Filtrar autos con mpg > 20

# sin dplyr

mtcars[!is.na(mtcars$mpg) & mtcars$mpg>20,]
subset(x = mtcars,subset = mpg > 20)

# con dplyr
mtcars %>% filter( mpg > 20 )


# select()
# mpg, hp

# sin dplyr
mtcars[,c("mpg","hp")]
subset(x = mtcars,select = c("mpg","hp"))

# con dplyr
mtcars %>% select(mpg, hp)
mtcars %>% select(-am)
# var que empiecen por c
vector <- grep(pattern = "^c",x = names(mtcars),value = T)
mtcars %>% select(all_of(vector))


# Ejercicio1
mtcars %>% select(mpg, cyl, hp)

# Ejercicio2
mtcars %>% select(-wt,-gear)

# Ejercicio3
mtcars %>% 
  filter(hp > 150 & mpg > 20)

# nota no existen autos con esas caracteristicas

# Ejercicio 4
mtcars %>%
  filter(cyl<4 & gear<3)
  
# nota no existen autos con esas caracteristicas

# Ejercicio 5
mtcars %>%
  filter(mpg > 20) %>%
  select(mpg,hp)
  

# Ejercicio 6

mtcars %>%
  filter(hp < 100) %>%
  select(mpg,cyl)



