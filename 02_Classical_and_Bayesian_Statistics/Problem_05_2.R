
#We roll a blue and a red dice together.

#a) Determine the probability distribution of the sum of the eyes rolled.

"
rolls = {
11, 12, 13, 14, 15, 16,
21, 22, 23, 24, 25, 26,
31, 32, 33, 34, 35, 36,
41, 42, 43, 44, 45, 46,
51, 52, 53, 54, 55, 56,
61, 62, 63, 64, 65, 66
}

Determined probability distributrion sum of eyes roleed on red and blue dice
x_k |   2     3     4     5     6     7     8     9     10    11   12
p_k | 1/36  2/36  3/36  4/36  5/36  6/36  5/36  4/36  3/36  2/36  1/36
"

# b) Calculate the expected value and the standard deviation. Interpret these 
# values.Use R by creating two vectors x and p, multiplying the two and using 
#the command sum(...).

x <- c(2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12)
x
p = 1/36 * c(1, 2, 3, 4, 5, 6, 5, 4, 3, 2, 1)
p

E_X <- sum(x*p)
E_X
# Expected value is 7, the sum of eyes is symmetrical 

var_X <- sum((x - E_X)^2 * p)
sd_X <- sqrt(var_X)
sd_X
# standard variation is 2.41

# expected value of sum of eyes during roll of 2 dice in one time is 7 +- 2.42