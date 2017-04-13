#Load required packages
require(tidyverse)
require(clipr)

#Create dataframes
players <- read_csv('wsaa_players.csv')
teams <- read_csv('wsaa_teams.csv')
regdata <- teams %>% filter(year_id<2017) %>% mutate(is_champ=as.numeric(is_champ))

#Run WSAA regression
reg <- glm(is_champ~WSAA,family=binomial(link="logit"),data = regdata)