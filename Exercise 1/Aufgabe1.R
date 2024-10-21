# Aufgabe 1 (Calculate the following quantities)

# the sum of 52.3, 74.8, 3.17
x <- c(52.3, 74.8, 3.17) 
sum(x)

# the square root of 144
x <- 144
sqrt(x)

# the 10-based logarithm of 200 multiplied with sin of pi/4
logX <- log10(200)
sinX <- sin(pi/4)
result <- logX * sinX
result

# the cumulative sum of the numbers 1,3,18,20,2 
x <- c(1,3,18,20,2)
cumsum(x)

# find 10 numbers between 0 and 20 rounded at nearest integer value
sample(0:20, 10, replace = FALSE)
round(runif(n = 10,min = 0, max = 20))