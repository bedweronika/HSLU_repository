# a) Read the data set income.dat.
income = read.table("./Problem02_files/income.dat", header = TRUE)
head(income)
summary(income)


# b) Generate scatter plots with the corresponding regression lines showing income versus number of years of schooling and income versus intelligence quotient. What do you find?
plot(income$Educ, income$Income2005, xlab="Years of educations", ylab="Income")
abline(lm(income$Income2005~income$Educ), col="red")


plot(income$AFQT, income$Income2005, xlab="intelligence quotient", ylab="income")
abline(lm(income$Income2005~income$AFQT), col="red")

# both plots looks more like histograms, generating regression line is not a good idea


# c) Determine the parameters a and b of the linear model y = a + bx, where y is the income and x is the number of years of schooling. How do you interpret the parameters a and b?

lm(income$Income2005~income$Educ)
"
Coefficients:
(Intercept)  income$Educ  
     -40200         6451
"
# basic income a = -40200 - before the education started
# b = 6451 - each year of education increase the income for 6451


# d) Calculate the correlation between income and number of years of schooling. How appropriate is a regression model for this data set?
cor(income$Income2005, income$Educ)   # [1] 0.3456474

# The correlation coefficients is low. The relationship between Income and years of education seams not to be appropriate.