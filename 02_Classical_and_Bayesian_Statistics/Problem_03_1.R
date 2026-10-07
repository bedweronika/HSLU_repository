# install.packages("ISLR")
library(ISLR)

# a) Investigate the data record with head(Auto) and ?Auto or help(Auto).
head(Auto)
?Auto
help(Auto)

# b) Adjust the model to a simple linear regression with mpg as the target variable and horsepower as the predictor.
'
mpg = a + b*horsepower
'

#c) Determine the coefficient of the regression. Use the lm() and summary() command to output the results command to perform this regression.

summary(Auto)
lr <- lm(Auto$mpg ~ Auto$horsepower)   # OR  lm(mpg ~ horsepower, data = Auto)
summary(lr)

# d) How do you interpret the coefficients for (intercept) and horsepower? Is the correlation positive or negative?
'
mpg = 39.936 - 0.158*horsepower
'
"
intercept: 39.936
the base, it represetnts the consumption of fuel when the speed is 0 mils per h

slope: -0.158
during the car driving, it represents 0.158 miles less for one galon
"

# e) Plot response variable and the predictor with the regression line (abline). 
#How do you interpret this plot compared to the summary() output.
plot(Auto$horsepower, Auto$mpg)
abline(lr, col="red")

"Clear trend that more horsepower reduce the miles per galon.

SOLUTION: The downward trend is clearly visible, hence the low p-value. However, the point
cloud does not fall linearly (weak R^2 value)."
