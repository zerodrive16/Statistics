# Aufgabe 6

library(tidyr)
library(tibble)
data <- who

# pivot_longer() longer table from wide to long
# pivot_wider() wider table from long to wide
# (a)
data1 <- who %>% gather(key = "key", value = "cases", new_sp_m014:newrel_f65, na.rm = TRUE) %>% 
  mutate(key = str_replace(key, "newrel", "new_rel")) %>% 
  separate(key, c("new", "type", "sexage"), sep = "_") %>% 
  separate(sexage, c("sex", "age"), sep = 1) %>% 
  select(-new, -iso2, -iso3)

# (b) 
anscombe[1:4] %>% gather(key = "set", value = "x") %>% 
  mutate(set = str_remove(set, pattern = "x"))

anscombe[5:8] %>% gather(key = "set", value = "y") %>% 
  mutate(set = str_remove(set, pattern = "y"))

tibble(
  set = anscombe.x$set, 
  x = anscombe.x$x, 
  y = anscombe.y$y
)

# (c)
production <- expand_grid(
  product = c("A", "B"), 
  country = c("AI", "EI"), 
  year = 2000:2014
) %>% 
  filter((product == "A" & country == "AI") | product == "B") %>% 
  mutate(production = rnorm(nrow(.)))

productionWide <- production %>% mutate(pc = str_c(product, country, sep = "_")) %>% 
  select(-product, -country) %>% spread(key = pc, value = production)

# (d)
warpbreaks
warpbreaks %>% 
  group_by(wool, tension) %>% 
  summarise(Mean = mean(breaks)) %>% 
  spread(key = wool, value = Mean)


rm(list = ls())
