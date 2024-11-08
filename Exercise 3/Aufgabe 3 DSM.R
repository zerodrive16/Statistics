# Descriptive Statistics - Measures
# Aufgabe 3

# (a)
data <- c(4, 3, 2, 4, 10)
mean(data)

# (b)
data <- c(4, 3, 2, 4, 10)
median(data)

# (c)
data <- c(4, 3, 2, 4, 10)
mode(data)

# (d)
# Quantile calculates the 20% of values that fall under 
data <- c(4, 3, 2, 4, 10)
quantile(data, 0.2)

# (e)
# Trimmed Mean 40 removes the lowest 20 and highest 20 which results in mean of 60% 
# in values
data <- c(4, 3, 2, 4, 10)
mean(data, trim = 0.4)