"
A cigarette manufacturer pretends that the nicotine content in a cigarette is on average
2.2 mg with standard deviation ofz 0.3 mg. However, for a sample of 100 randomly
selected cigarettes, the sample mean is 3.1 mg.
If the cigarette manufacturer’s statement is true, what is the probability that the sample
mean reaches a value of 3.1 mg or more? Interpret your result.

"
mean_val <- 2.2    #mg
std_val <- 0.3  #mg
sample_mean <-3.1 #mg

# P(X >= 3.1) = 1 - P(X <= 3.1)

# P norm calculate P(x<= sample) 
X_100 <- 1 - pnorm(sample_mean, mean_val, std_val/sqrt(100))
X_100
# [1] 0

# IF the statement of manufacturer is true, in 100 samples he can find 100% probability below 3.1 mg
# It does not mean that the manufacturer cannot find a sample 3.1mg but it is very unlikely
