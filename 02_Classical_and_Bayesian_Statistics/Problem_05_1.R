"
Calculate the expected value of the following probability distribution. Use R.

xk | −5  −4   1   3   6
pk | 0.3 p2 0.1 0.2 0.3
"
p2 <- 1 - (0.3 + 0.1 + 0.2 + 0.3)
p2
x <- c(-5, -4, 1, 3, 6)
p <- c(0.3, p2, 0.1, 0.2, 0.3)

E_X <- sum(x*p)
E_X