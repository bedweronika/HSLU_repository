"4. Load the dataset lecture2_math.csv. Explore whether there is a
difference in the number of countries visited in the last 12 months
(countries) for men and women (gender)."

df <- read.csv('./Out_Data/lecture2_math.csv')
head(df)

# df[c('gender', 'countries')]


library(janitor)    ## execute install.packages("janitor", dependencies=TRUE)
library(tidyverse)    ## execute install.packages("tidyverse", dependencies=TRUE)

df %>% tabyl(countries, gender)


"
5. What is the drawback of using a scatter plot in the example
above? What does it hide?
"
# scatter plot cannot be used because gender observation does not have numeric values



"
6. Do the number of gym visits in the last month (gym_visits)
differ by gender?
"
df %>% tabyl(gym_visits, gender)



"
7. Look at a scatter plot between the number of countries visited
(countries) and academic performance (math_points).
"
plot(df$countries, df$math_points)



"
8. Look at a scatter plot between the number of gym visits
(gym_visits) and academic performance (math_points).
"
plot(df$gym_visits, df$math_points)

