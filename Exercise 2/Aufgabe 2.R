# Aufgabe 2

#  Calculate the value of sin(log(√5 + 3)) directly and using the % > %-operator.
library(magrittr)

# Traditional way
result <- sin(log(sqrt(5+3)))

# With Pipe operator
result_pipe <- (5+3) %>% sqrt() %>% log() %>% sin()

# Define a vector v with values 0.5,1,1.5,...,5 and calculate the by 2
# digits rounded sum of the logarithms of the squared values of v
# with nested operations and using the % > %-operator.
v <- seq(from = 0.5, to = 5, by = 0.5)
v

result2 <- round(sum(log(sqrt(v)), 2))

result2_pipe <- v %>% sqrt() %>% log() %>% sum() %>% round(2)