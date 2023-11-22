
# Modulo 5

## group_by()

# Agrupa los autos en función del número de cilindros

mtcars %>% 
  group_by(cyl)

## summarise()

# n(): numero de items por la variable que se agrupa (cyl)

table(mtcars$cyl)

mtcars %>% 
group_by(cyl) %>%
summarise(count = n())

# mean: valor medio var2 agrupando por var1 (cyl)
# ejemplo: media de millas en los autos de cyl = 4, cyl = 6, cyl = 8

mtcars %>% 
  group_by(cyl) %>%
  summarise(mean_miles = mean(mpg,na.rm = T))


## ejemplos con summarise()

houses <- data.frame( id = 1:10,
                      n_hab = c(1,1,1,2,3,3,2,1,4,2),
                      prize = as.integer(rnorm(n = 10,mean = 200000,sd = 75000)))


# calcula el nº de apartamentos según el nº de habitaciones

houses %>%
  group_by(n_hab) %>%
  summarise(count = n())

# calcula la media de precios de apartamentos según el nº de habitaciones

houses %>%
  group_by(n_hab) %>%
  summarise(median_prize = mean(prize,na.rm=T))

## ungroup()

mtcars %>% 
group_by(cyl) %>%
mutate(mean_per_cyl = mean(mpg,na.rm = T)) %>%
ungroup() %>%
group_by(am) %>%
mutate(mean_per_am = mean(mpg,na.rm = T)) %>%
ungroup()

### Soluciones Ejercicios

# Ejercicio1
mtcars %>% 
  group_by(cyl) %>%
  summarise(mean_mpg = mean(mpg,na.rm = T)) %>%
  ungroup()

# Ejercicio2
mtcars %>% 
  group_by(cyl) %>%
  summarise(sum_hp = sum(hp,na.rm = T)) %>%
  ungroup()

# Ejercicio3
mtcars %>% 
  group_by(am) %>%
  summarise(mean_mpg = mean(mpg,na.rm = T),
         median_mpg = median(mpg,na.rm = T)) %>%
  ungroup()

  
# Ejercicio4
mtcars %>% 
  group_by(am) %>%
  summarise(mean = mean(mpg,na.rm = T),
            median = median(mpg,na.rm = T),
            max = max(mpg,na.rm = T),
            min = min(mpg,na.rm = T)) %>%
  ungroup()

# Ejercicio5
mtcars %>% 
  group_by(am) %>%
  summarise(mean1 = mean(mpg,na.rm = T)) %>%
  ungroup() %>%
  group_by(vs) %>%
  summarise(mean2 = mean(mpg,na.rm = T)) %>%
  ungroup()


