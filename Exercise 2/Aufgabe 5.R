# Aufgabe 5

# (a) Load the libraries and nycflight13 and inspect the variable of flights
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
     
# (g) Exchange the values of departure time and arrvial time in minute
# after midnight.
# Example: departure time 722 given by HMinutes is in minutes
# after midnight 442!
flights <- flight %>% mutate(
  # %/% gets the hours 722 %/% 100 = 7
  # %% gets the minutes 722 %% 100 = 22
  dep_minutes = (dep_time %/% 100) * 60 + (dep_time %% 100), 
  arr_minutes = (arr_time %/% 100) * 60 + (arr_time %% 100)) %>% 
  select(dep_minutes, arr_minutes
)

# (h) Add a column speed which denotes the average speed of the flight
# and determine the carrier, flight of the top 10 values of speed.
flights <- flight %>% mutate(
  speed = (distance / air_time * 60)) %>% select(carrier, flight, speed) %>%
  arrange(desc(speed)) %>% top_n(10, speed)

# (i) Find a list of carriers with a column ratio which denotes the number of flights
# with arr_delay less than 10 minutes to the total number of flights. The list 
# should be sorted by ratio
flight %>% filter(!is.na(arr_delay)) %>% # Ignore flights that are unknown
  mutate(bool_del = if_else(arr_delay < 10, 1, 0)) %>% # New Col flights on time
  group_by(carrier) %>% # group data by carrier to do the calculations
  mutate(
    nof = n(), # count total number of flights
    ndel = sum(bool_del), # count the number of "on time" flights carrier
    del_ratio = ndel / nof # Get the ratio from total and number of on time flights
    ) %>%
  select(carrier, nof, ndel, del_ratio) %>% # select relevant cols
  unique() %>% # remove duplicates
  arrange(desc(del_ratio) # sort carriers on time desc
)

# (j) Find a list which denotes for every month the carrier with highest
# ratio which denotes the number of flights with arr delay less than
# 10 minutes to the total number of flights. The list should have
# the columns month, carrier, number of flights of the carrier in that
# month and ratio.
flight %>% filter(!is.na(arr_delay)) %>% 
  mutate(bool_del = if_else(arr_delay < 10, 1, 0)) %>% 
  group_by(month, carrier) %>%
  mutate(
    nof = n(),
    ndel = sum(bool_del), 
    del_ratio = ndel / nof
  ) %>%
  select(month, carrier, nof, ndel, del_ratio) %>%
  group_by(month) %>% filter(del_ratio == max(del_ratio)) %>%
  unique() %>%
  arrange(month)

# (k) Find a table with the number of cancelled flights (dep delay =
# NA), the number of flights with no dep delay ( —dep delay—
# ≤ ± 5 minutes and the means of dep delay, arr delay per month
# and day.
# cancelled flights
canc_flights <- flights %>% 
  filter(is.na(dep_delay)) %>% 
  group_by(month, day) %>% 
  summarise(nof_canc = n())
# no delay flights
no_delay <- flights %>% 
  filter(!is.na(dep_delay) & dep_delay >= -5 & dep_delay <= 5) %>% 
  group_by(month, day) %>% 
  summarise(nof_no_delay = n())
# calculate average
avg_delays <- flights %>% 
  group_by(month, day) %>% 
  summarise(
    mean_dep_del = mean(dep_delay, na.rm = TRUE), 
    mean_arr_del = mean(arr_delay, na.rm = TRUE)
  )
# join into table
table <- full_join(canc_flights, no_delay, by = c("month", "day")) %>%
  full_join(avg_delays, by = c("month", "day"))

# (l)  Determine a table that shows, for each airline (carrier), the flight
# connection given by the airports of dest und origin that occurred
# most frequently in 2013. The table should contain only the columns
# names of airline, destination, origin and frequency and be sorted
# by frequency in descending order. You can find the names of the
# carrier from the dataset airlines and the names of the airports
# from the dataset airports.
flights %>% count(carrier, origin, dest) %>% group_by(carrier)


rm(list = ls())
