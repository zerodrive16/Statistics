# Aufgabe 1

# Consider the following Datasets
library(tibble)

student1 <- tibble(student = c("Adam", "Bernd", "Christian", "Doris"), 
                   algebra = c(NA, 5, 3, 4), 
                   analysis = c(2, NA, 1, 3), 
                   diskrete.math = c(3, NA, 2, 4),
                   )

student2 <- tibble(name = rep(c("Adam", "Bernd", "Christian", "Doris"), each = 2), 
                   type = rep(c("height", "weight"), 4), 
                   measure = c(1.83, 81, 1.75, 71, 1.69, 55, 1.57, 62))

student3 <- tibble(name = c("Adam", "Bernd", "Christian", "Doris"), 
                   ratio = c("81/1.83", "71/1.75", "55/1.69", "62/1.57"))

# (a) Describe for every dataset what the dataset contains? What are the variables
# and what are the observations? 

# Variables = Attributes amount in a tibble table (column)
# Observations amount of side attributes (rows)

# student1 = Each individual student with their marks on the subjects
# student2 = Each Student with their height and weight
# student3 = Each Student with their body height and weight ratio

# (b) Why are these datasets are not tidy
# Principles of a Tidy Dataset is
# 1. Each variable is a column
# 2. Each Observation is a row
# 3. Each value is a single, distinct cell
# The datasets violate these rules

# (c) Make a tidy version of all datasets

student1_tidy <- tibble(student = rep(c("Adam", "Bernd", "Christian", "Doris"), each = 3), 
                        subject = rep(c("Algebra", "Analysis", "Diskrete.math"), 4), 
                        grades = c(NA, 2, 3, 5, NA, NA, 3, 1, 2, 4, 3, 4)
                        )

student2_tidy <- tibble(name = c("Adam", "Bernd", "Christian", "Doris"), 
                        height = c(1.83, 1.75, 1.69, 1.57), 
                        weight = c(81, 71, 55, 62)
                        )

student3_tidy <- tibble(name= c("Adam", "Bernd", "Christian", "Doris"), 
                        height = c(1.83, 1.75, 1.69, 1.57), 
                        weight = c(81, 71, 55, 62)
                        )
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
rm("student1_tidy")
