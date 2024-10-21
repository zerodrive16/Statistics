# Aufgabe 3 (Mumbers of first ten days of rainfall in a year)

# Read them into a vector using the c() command
vectorX <- c(0.1, 0.5, 2.3, 1.1, 11.3, 14.7, 23.4, 15.7, 0, 0.9)

# Calculate the mean and the standard deviation
mean(vectorX)
sd(vectorX) # standard deviation

#Calculate the cumulative rainfall over these ten days. What is total sum of the
#rainfall
cumsum(vectorX)

# Which day saw the highest rainfall? Find an appropriate R command
max(vectorX)

# Take a subset of the rainfall data where rain is larger than 10
subset(vectorX, vectorX > 10)

# What is mean rainfall for days where the rainfall was at least 5
mean(subset(vectorX, vectorX > 5))

# Subset the vector where it is either exactly 0 or 1.1 and find the 
# corresponding days
vectorX[vectorX == 0 | vectorX == 1.1] 
which(vectorX %in% c(0, 1.1))
