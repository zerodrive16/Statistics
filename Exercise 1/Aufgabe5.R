# Aufgabe 5 (Inspect the R commands union(), setdiff(), intersect() implying
# set operations. Make two vectors)
x <- c(1, 2, 3, 4, 5)
y <- c(3, 5, 7, 9)

# Find values that are contained in both x and y
intersect(x,y)

# Find values that are in x but not y and vice versa
setdiff(x, y) # in x but not in y 
setdiff(y,x) # in y but not in x

# Construct a vector that contains all values contained in either x or y 
# Compare the result with c(x,y)
c(x,y)
