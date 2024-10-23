# Aufgabe 8

# Create a list 
x_list <- list("John", "Mary", c(4, 6, 10))
x_list

# Create a second list containing the names Bob, Cate and Susan of the children
y_list <- list("Bob", "Cate", "Susan")
y_list

# Concatenate the lists. 
list_xy1 <- c(x_list, y_list)
list_xy1

list_xy2 <- list(x_list, y_list)
list_xy2
# Both work the same way but c() uses coercion, to convert all values to a 
# specific type

# Access the concatenated list to create directly a list containing for every
# child name and age
