# Aufgabe 4 (Lengths of five cylinders and diameters)

# Read these vectors into two vectors with appropriate names
length <- c(2.5, 3.4, 4.8, 3.1, 1.7)
diameters <- c(0.7, 0.4, 0.5, 0.5,  0.9)

# Calculate the volumes of each cylinder and store it in a new vector
V <- pi * (diameters / 2)^2 * lenght

# Assume the values are given in centimeter. Recaculate the volumes so that 
# their units are cubic millimeter
Vcm <- pi * (10*diameters / 2)^2 * 10 * length
