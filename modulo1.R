#
# Project Name : dplyr
# Script Name  : 
# GitHub repo  : dplyr
# Summary      : Curso basico de dplyr
# Date created : 2023-09-20
# Author       : CRISTINA LOPEZ ZUMEL

# Description --------------------------------------------------------------
# 
# 
# 



# START of SCRIPT  --------------------------------------------------------

# Instalacion dplyr
install.packages("dplyr")
# Carga dplyr
library(dplyr)


# Carga datos
mtcars

# Ejercicio 1
# sin dplyr
mtcars[!is.na(mtcars$cyl) & mtcars$cyl==6,]

# con dplyr
mtcars %>%
  filter(cyl==6)

# Ejercicio 2
# sin dplyr
rownames(mtcars[!is.na(mtcars$wt) & mtcars$wt>3,])

# con dplyr
dt <- mtcars %>%
      filter(wt > 3)
rownames(dt)

