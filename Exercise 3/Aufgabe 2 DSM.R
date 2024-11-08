# Descriptive Statistics - Measures
# Aufgabe 2

# (a)
value <- 1000 
annual_return <- c(0.13, 0.22, 0.12, -0.05, -0.13)
portfolio_value <- value * prod(1 + annual_return)
portfolio_value

# (b)
value <- 1000 
annual_return <- c(0.13, 0.22, 0.12, -0.05, -0.13)
x <- 1 + annual_return
n <- length(annual_return)
geometric_mean <- prod(x)^(1 / n)
geometric_mean

# (c)
fifthYear <- geometric_mean * (1 + 0.13)
fifthYear
sixthYear <- fifthYear * (1 + 0.22)
sixthYear
# I dont understand the quesion "HELP"
