# Aufgabe 2
library(tidyverse)
# (a)
# cumsum

data <- c(568, 577, 577, 581, 640, 641, 645, 657, 673, 696, 703, 720, 728, 728, 
          728, 729, 777, 808, 824, 825, 865, 975, 1007, 1007)

plot.ecdf(data)

# (b) (i)
# Empirical cumulative Distribution Function
Fn <- ecdf(data)
Fn(800)
plot.ecdf(data, xlab = "time", ylab = "Fn(x)")

# (b) (ii)
Fn <- ecdf(data)
1-Fn(725)
plot.ecdf(data, xlab = "time", ylab = "Fn(x)")

# (b) (iii)
Fn <- ecdf(data)
Fn(777) - Fn(642)
plot.ecdf(data, xlab = "time", ylab = "Fn(x)")

# (b) (iv)
Fn <- ecdf(data)
Fn(696) - Fn(695)
plot.ecdf(data, xlab = "time", ylab = "Fn(x)")

# (c)
bounds <- c(500, 600, 700, 800, 900, 1000, 1100)
# Takes them into intervals so (500,600], (600,700]
cut(data, breaks = bounds) 
# Removing the 500 bounds since the values are not inside there
times_cut <- cut(data, breaks = bounds, labels = bounds[-1])
times_cut
hist(as.integer(times_cut))

# (d)
bounds <- c(500, 600, 900, 1000, 1200)
times_cut <- cut(data, breaks = bounds, labels = bounds[-1])
times_cut
hist(as.integer(times_cut))
