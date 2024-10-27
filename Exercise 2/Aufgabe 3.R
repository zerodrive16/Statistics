# Aufgabe 3 

library(tidyverse)

df <- tibble(id = 1:10, sex = sample(x = c("f", "m"), size = 10, replace = TRUE), 
             age = round(runif(10, 20, 35)), 
             score1 = round(runif(10, 0, 25))
             )

# Select the data of all male students
df_males <- df %>% filter(sex == "m")

#  Add the data of a new student with id = 11, sex = “m”, age = 25 and score1 = 4.
df <- df %>% add_row(id = 11, sex = "m", age = 25, score1 = 4)

#  Add two columns score2 and score3 with random integer numbers between 0 and 25.
df <- df %>% add_column(score2 = round(runif(11, 0, 25)), 
                        score3 = round(runif(11, 0, 25))
                        )

#  Add a column containing sum of all scores.
df <- df %>% mutate(total_score = rowSums(across(starts_with("score"))))

#  Add a column which denote the grades according to the scheme
df <- df %>% mutate(grade = case_when(
                    total_score <= 37 ~ 5, 
                    total_score > 37  & total_score <= 45 ~ 4, 
                    total_score > 45 & total_score <= 55 ~ 3, 
                    total_score > 55 & total_score <= 65 ~ 2, 
                    total_score > 65 ~ 1
                    ))

df %>% select(id, sex, grade) %>% filter(grade > 5) %>% arrange(sex)

df %>% group_by(sex) %>% summarize(mean_scores = mean(total_score), 
                                   minimum_scores = min(total_score), 
                                   maximum_scores = max(total_score), 
                                   median_scores = median(total_score)
                                   )

df

