# Aufgabe 7 (The R dataset mpg)

# Inspect the dataset mpg
library(ggplot2)
library(tidyverse)
help(mpg)
names(mpg)
head(mpg)

# Determine the types and the sales of measurement of all variables in the dataset mpg. 
# Further more determine whether the variables are discret or continous.
str_mpg <- tibble(name = character(), type = character(), level = character(), 
                  dc = character())
#                 1. Types      2. Level    3. Discrete / continuos
# Manufacturer =  Qualitative   Norminal    Discrete
# model =         Qualitative   Norminal    Discrete
# displ =         Quantitative  Scale       Continuos
# year =          Quantitative  Interval    Discrete
# cyl =           Quantitative  Ratio       Discrete
# trans =         Qualitative   Norminal    Discrete
# drv =           Qualitative   Norminal    Discrete
# cty =           Quantitative  Ratio       Continous
# hwy =           Quantitative  Ratio       Continous
# fl =            Qualitative   Norminal    Discrete
# class           Qualitative   Norminal    Discrete