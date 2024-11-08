# Descriptive Statistics - Measures
# Aufgabe 5

non_player <- c(22.1, 22.3, 26.2, 29.6, 31.7, 33.5, 38.9, 39.7, 43.2, 43.2)
beginner <- c(32.5, 37.1, 39.1, 40.5, 45.5, 51.3, 52.6, 55.7, 55.9, 57.7)
tournament <- c(40.1, 45.6, 51.2, 56.4, 58.1, 71.1, 74.9, 75.9, 80.3, 85.3)

# Mean
mean(non_player)
mean(beginner)
mean(tournament)

# Median
median(non_player)
median(beginner)
median(tournament)

# Min
min(non_player)
min(beginner)
min(tournament)

# Max 
max(non_player)
max(beginner)
max(tournament)

# Quantiles (Divide data into equal intervals 25%, 50%, 75% were data falls)
quantile(non_player)
quantile(beginner)
quantile(tournament)

# Interquantile range (Subtract Q3 from Q1 to get the middle 50% spread data)
IQR(non_player)
IQR(beginner)
IQR(tournament)

# Variance (Measures spread data how far they are from the mean)
var(non_player)
var(beginner)
var(tournament)

# Boxplot
data <- list(Non_player = non_player, Beginner = beginner, Tournament = tournament)

boxplot(data)
