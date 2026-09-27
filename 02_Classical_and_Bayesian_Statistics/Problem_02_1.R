setwd(".")
'
In a study from the UK, the age (in years) and the body height (in cm) of 170 married
couples were collected.
'


# a) Load the file husband_wife.csv. Assign it to a variable
df <- read.csv("./Problem02_files/husband_wife.csv")


# b) Execute the summary(...) command. Explain what the command does and interpret the values for the age of husband and wife.
summary(df)   ## returns information about numerical objects in data frame

'
Husband:
min age is 20, and maximal 64 in this data set. median is 43.50, mean is 42,92
1st Quantile is 33, 3td quantil is 53

Wife:
min age is 18, and maximal 64 in this data set. median is 41, mean is 40,68
1st Quantile is 32, 3td quantil is 50
'


# c) Create a box plot of the difference of age between husbands and wives
boxplot(df['age.husband']-df['age.wife'])

# d) Interpret the median and quartiles in the box plot. What can you say about the outliers?
'
approximated values of the boxplot of difference between observations age.husband and age.wife
median is 2
1.st quantile is 0
3dt quantile is 4.5
Largest normal observation is 10
lowest normal observation is -5
outliners for values: -12, -8, 11, 12, 15, 20
'
