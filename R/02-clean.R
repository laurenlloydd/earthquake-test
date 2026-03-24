## Option A: Weekly Summary Report

## in class example 

raw %>% 
select(mag, locationSource, time) %>% 
lubridate::ymd_hms(dmy) %>% 
mutate("date" = )

n_eq_g4 <- raw %>% 
  filter(mag > 4) %>%  
  count()

min_date <- raw %>%  
  summarize(min = min(ymd_hms(time))) 

max_date <- raw %>%  
  summarize(max = max(ymd_hms(time))) 

save(n_eq_g4, min_date, max_date,
     file = "data/clean/number_earthquakes.RData")

# make clean dataset

clean <- raw %>%  
  select(time, mag) 

save(clean, file="data/clean/clean.RData") 
#write_csv(clean = file="data/clean/clean.csv.")


library(tidyverse)
library(lubridate)

raw <- read_csv("data/raw/earthquakes.csv")

# count how many earthquakes report dangerous magnitude (>4)





