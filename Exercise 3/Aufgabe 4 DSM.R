# Descriptive Statistics - Measures
# Aufgabe 4

values <- c(5,4,1,7,2,3,1,2)

arithmetic_mean <- mean(values)
arithmetic_mean

n <- length(values)
geometric_mean <- prod(values)^(1 / n)
geometric_mean

n <- length(values)
harmonic_mean <- n / sum(1 / values) 
harmonic_mean

trimmed_mean <- mean(values, 0.2)
trimmed_mean