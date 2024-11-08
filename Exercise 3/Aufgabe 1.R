# Aufgabe 1
library(tidyverse)
library(ggplot2)

result2013 <- c(0.268, 0.205, 0.126, 0.107, 0.092, 0.089, 0.062, 0.05)
result2017 <- c(0.341, 0.257, 0.047, 0.048, 0.086, 0.084, 0.074, 0.062)
textLabels <- c("CDU", "SPD", "AfD", "FDP", "LINKE", "GRUENE", "CSU", "Others")

pie(result2017, labels = textLabels, main = "Pie Chart")
barplot(result2017, names.arg = textLabels)

difference <- result2017 - result2013
barplot(difference, names.arg = textLabels)

rm(list = ls())
