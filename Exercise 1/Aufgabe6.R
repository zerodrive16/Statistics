# Aufgabe 6 (Construct a Matrix)

# Calculate the row means of this matrix and the standard deviation across the 
# row means
mat1 <- matrix(c(seq(0,18, by = 2), as.integer(runif(70, 0, 10))), nrow = 8, ncol = 10, byrow = TRUE)
mat1
sd(rowMeans(mat1))

# Store the rows in an other matrix and calculate the column means
matrix2 <- mat1[-1,]
matrix2
hist(rowMeans(matrix2))
