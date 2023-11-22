
# Modulo 4

## rename()

# Cambia de nombre a la variable mpg

mtcars %>% 
  rename(millas = mpg)

## mutate()

# Crea una variable que sea la suma mpg + cyl

mtcars %>% 
  mutate(suma = mpg + cyl)


### Soluciones Ejercicios

# Ej1. 
# Crear una nueva variable llamada "kml" que convierta la variable "mpg" (millas por galón) 
# a kilómetros por litro.

mtcars %>% 
  mutate(kml = mpg*0.425144)

# Ej2. 
# Crear una nueva variable llamada "efi" que indique si un automóvil tiene una eficiencia de combustible (mpg) 
# superior a 20 (“alta eficiencia”) o no (“baja eficiencia”).

mtcars %>% 
  mutate(efi = ifelse(mpg > 20,"alta eficiencia","baja eficiencia"))

# Ej3. 
# Crear una nueva variable llamada "nombre2" que combine las variables "carb" (número de carburadores) 
# y "gear" (número de marchas) en un solo campo

mtcars %>% 
  mutate(nombre2 = paste0(carb,"_",gear))

# Ej4. 
# Renombrar la variable "am" a "transmision_auto" y "gear" a "num_marchas".

mtcars %>% 
  rename(transmision_auto = am,
         num_marchas = gear)




