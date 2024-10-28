# Aufgabe 5

# (a) Load the libaries and nycflight13 and inspect the variable of flights
library(tidyverse)
library(nycflights13)
help(flights)
names(flights)
head(flights, n = 10)
flight <- flights 
# year, month, day, dep_time, sched_dep_time, dep_delay, arr_time, sched_arr_time

# (b) Find all flights with more than 2 hours arrival delay
flight_delay <- flight %>% filter(arr_delay > 2)
flight_delay

# (c) Find all flights with more than 2 hours arrival delay and no departure delay
flight_arr_no_dep <- flight %>% filter(arr_delay > 120 & dep_delay <= 0)
flight_delay_no_dep

# (d) Find all flights from United, American and Delta with no arrival delay
flights_U_A_D <- flight %>% filter(carrier %in% c("UA", "AA", "DL") & arr_delay <= 0)

# (e) Find all flights from United, American and Delta in the month May with more
# than 5 hours arrival delay sorted by carrier and flight number. 
flights_U_A_D_May_5 <- flight %>% filter(carrier %in% c("UA", "AA", "DL") & 
                                  month == 5 & arr_delay > 300) %>% 
                                  select(carrier, flight) %>% arrange(carrier, flight) %>%
                                  unique()
# (f) Add a column speed which denotes the average speed of the flight and determine
# the carrier, flight of the top 10 values of speed. 
flights %>% mutate(speed = distance / (air_time / 60)) %>% 
                    select(carrier, flight, speed) %>% arrange(desc(speed))
                    top_n(speed, 10)
                    
# (g) Find a list of carriers with a column ratio which denotes the number of flights
# with arr_delay less than 10 minutes to the total number of flights. The list 
# should be sorted by ratio
flights %>% filter(!is.na(arr_delay)) %>% count(arr_delay < 10, carrier) %>%
  group_by(carrier) %>% mutate(nof = sum(n), del_ratio = n / sum(n)) %>% 
  filter("arr_delay < 10" == TRUE) %>% arrange(desc(del_ratio))
