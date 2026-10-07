# a) Fit a multiple linear regression model with response variable medv and predictors lstat and age.
# Define the model and interpret all coefficients in the summary() output.
lr <- lm(medv~lstat+age, data = Boston)
summary(lr)
# Model: medv = 33.22 - 1.03 * lstat + 0.03 * age
"
Interpretation:
# medv    median value of owner-occupied homes in $1000
# lstat   lower status of the population (percent).
# age     proportion of owner-occupied units built prior to 1940.

33.22:    If lstat(ower status is 0 %) and age is 0 then medv is 33.22
- 1.03:   With constant age, the median value is 1.03 per $1000 lower for each increased 1 percent of lower status
0.03:     With a constant lower status, each 1 additional age increate the value for 0.03 per $1000
"


# b) The Boston data set contains 13 variables, and so it would be cumbersome to have to type all of these in order to perform a regression using all of the predictors.
# Instead, we can use the following short-hand lm(medv ~ ., data = Boston)
lr_all <- lm(medv ~ ., data = Boston)
summary(lr_all)
