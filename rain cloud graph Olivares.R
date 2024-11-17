library(tidyverse)
library(tidyquant)
library(ggdist)
library(ggthemes)

data1 <- read_csv("C:/Users/gaboo/Documents/Gabo/universidad/UOC/visualizacion/Salary.csv",show_col_types = FALSE)
head(data1)

data1 %>% 
  distinct(Country)

data1 %>% 
  filter(`Job Title` == "Data Analyst")


data1 %>% 
  ggplot(aes(x = factor(Gender), y = Salary, fill = factor(Gender))) +
  
  stat_halfeye(
    adjust = 0.5,
    justification = -0.2,
    .width = 0,
    point_colour = NA
  ) +
  geom_boxplot(
    width = 0.12,
    outlier.color = "red",
    alpha = 0.5
  ) +
  stat_dots(
    side = "left",
    justification = 1.1,
    binwidth = 0.25
  ) +
  labs(
    title = "RainCloud Plot GENDER vs SALARY",
    x = "GENDER",
    y = "SALARY",
    fill = "Gender"
  ) +
  coord_flip()

