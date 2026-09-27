"4. Load the dataset lecture2_math.csv. Explore whether there is a
difference in the number of countries visited in the last 12 months
(countries) for men and women (gender)."

df <- read.csv('./Out_Data/lecture2_math.csv')
head(df)

df[c('gender', 'countries')]



'
gender <- df$gender
# gender.female <- gender
countries <- df$countries
tapply(countries, gender, FUN=mean)


df %>% group_by(gender)
'

library(janitor)
df %>% tabyl(gender,countries)