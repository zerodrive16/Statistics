# Aufgabe 4

library(tidyverse)
no <- 30 
exercise.results <- tibble(
  stud.id = 1:no, 
  group = sample(x = c("A", "B", "C"), size = no, replace = TRUE), 
  ex1 = sample(x = 1:10, size = no, replace = TRUE), 
  ex2 = sample(x = 1:10, size = no, replace = TRUE), 
  ex3 = sample(x = 1:10, size = no, replace = TRUE), 
  ex4 = sample(x = 1:10, size = no, replace = TRUE), 
  ex5 = sample(x = 1:10, size = no, replace = TRUE)
)
# (a) Apply n() and count() to get the number of students in the different groups. 
# What are the difference between n() and count()? 

# Information about the current group or variable (gives current group size)
# Only works in summarise and mutate functions
exercise.results %>% group_by(group) %>% summarise(no.students = n())

# Count the observeration in each group
# Doesn't require mutate or summarise 
exercise.results %>% group_by(group) %>% count()

# Add the variables sum.scores and mean.scores containing the sum and the of the
# scores in the exercise for every student by applying the function sum() and 
# mean(). What is the result if rowwise() is applied before the mutate()? 
exercise.results %>% mutate(sum.scores = rowSums(across(starts_with("ex"))),
                            mean.scores = rowMeans(across(starts_with("ex")))
                            )
# Rowwise() would treat each row as a group


rm(list = ls())
