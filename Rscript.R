## Group Assignments

## Group 1: Analyze the Number of Attacks per Year
## Sahil 
## Jhezael

## Role 1: Filter and prepare data by year. 

# Libraries

library(dplyr)
library(ggplot2)

## Read in the global terrorism dataset.

data<-read.csv("globalterrorismdb_0718dist.csv")

## Filter the data by year and remove missing values

year_data <- data %>%
  select(iyear) %>%
  filter(!is.na(iyear))

## Role 2: Count the number of attacks per year. 

attacks_per_year <- year_data %>%
  group_by(iyear) %>%
  summarise(num_attacks = n())

head(attacks_per_year)

##Role 3: Visualize the number of attacks per year using a bar chart.

ggplot(attacks_per_year, aes(x = iyear, y = num_attacks)) +
  geom_bar(stat = "identity", fill = "steelblue") +
  labs(
    title = "Number of Terrorist Attacks per Year",
    x = "Year",
    y = "Number of Attacks"
  ) 
