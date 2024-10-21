# Aufgabe 2 (Assigning Variables)

# Assign the number 5 to x and the number 10 to y
x <- 5
y <- 10 

# Calculate the product of x and y
# Store the result in a new variable z
z <- x * y
z

# Make a vector myvec of the objects x,y,z
myvec <- c(x,y,z)

# Find the minimum, the maximum and the mean of the vector
mean(myvec)
min(myvec)
max(myvec)

# Remove myvec from the workspace
rm(list=ls())



