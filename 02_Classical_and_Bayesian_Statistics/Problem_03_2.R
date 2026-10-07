library(MASS)

# a) To find out more about the data set, we can type ?Boston
?Boston


# b) Which column names are available?
colnames(Boston)
# [1] "crim"    "zn"      "indus"   "chas"    "nox"     "rm"      "age"     "dis"     "rad"     "tax"     "ptratio" "black"   "lstat"   "medv"   


# c) Use the attach(...)-command to let R recognize the column names of the data set Boston.
?attach
attach(Boston,  warn.conflicts = TRUE)


# d) We will start by using the lm() function to fit a simple linear regression model, with medv as the response and lstat as the predictor.
    # i) Define the simple regression model using the two variables above.
      # medv = a + b*lstat
    # ii) The basic syntax is lm(y ~ x, data=...) , where y is the response, x is the predictor, and data is the data set in which these two variables are kept.
      # lm_fit <- lm(...)
      # summary(lm_fit)
lm_fit <- lm(Boston$medv ~ Boston$lstat)
summary(lm_fit)


#  e) We can use the names(...) function in order to find out what other pieces of information are stored in lm.fit.
names(lm_fit)   #  [1] "coefficients"  "residuals"     "effects"       "rank"          "fitted.values" "assign"        "qr"            "df.residual"   "xlevels"       "call"          "terms"         "model"  


#  f) Although we can extract these quantities by name — e.g. lm.fit$coefficients — it is safer to use the extractor functions like coef(...) to access them.
coef(lm_fit)   #  OR lm.fit$coefficients


#  g) We will now plot medv and lstat along with the least squares regression line using the plot(...) and abline() functions (see exercise sheet 2).
# Use lty = ..., pch = ... and col = ... to make the plot look nicer.
?plot
plot(lstat, medv, lty=3, pch="x", col="blue")
abline(lm_fit, col="orange")
