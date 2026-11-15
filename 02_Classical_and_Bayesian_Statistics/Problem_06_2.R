"The time a passenger spends at an airport check-in counter is a random variable with
mean value 8.2 minutes and standard deviation 6 minutes. We randomly observe 36
passengers.
(∗) a) Calculate the probability that the average waiting time of these passengers is less
than 10 minutes. Interpret your result.
(∗) b) Calculate the probability that the average waiting time of these passengers is between 5 and 10 minutes. Interpret your result.
(∗) c) Calculate the probability that the average waiting time of these passengers is
more than 20 minutes. Interpret your result.
(∗ ∗ ∗) d) All of us have probably already had the experience of a longer waiting time at a
check-in counter. Why is the probability of c) then so small?
  (∗∗) e) Does the i.i.d. assumption hold here at all?"

miu_value <- 8.2  #min  mean waiting time in airport check-in 
std_val <- 6      #min
n <- 36

# a) calculate the probability that the average waiting time is less then 10 mins
# P(X <= 10)
X_36 <- pnorm(10, miu_value, std_val/sqrt(n))
X_36      # [1] 0.9640697
# probability that passengers waiting time is less then 10 mins is 96% 

# b) Calculate that average waiting time is between 5 and 10 mins
# P(5 <= X <= 10)
X_5_10 <- pnorm(10, miu_value, std_val/sqrt(n)) - pnorm(5,  miu_value, std_val/sqrt(n))
X_5_10    # [1] 0.9633825
# Probability that passengers spend more then 5 mins and less then 10 mins 
# in the queue is very high, and is equal 96%

# c) Probability that average waiting time of the passenger is more then 20 mins
# P(X >= 20) = 1 - P(X <  20)
X_20 <- 1 - pnorm(20, mean_val, std_val/sqrt(n))
X_20 # [1] 0
# The probability that passengers spend in the queue more then 20 min is calculated as 0, 
# it means that situation is unlikely, and probably will not happen

# (∗ ∗ ∗) d) All of us have probably already had the experience of a longer waiting time at a
# check-in counter. Why is the probability of c) then so small?
# For 36 people waiting in the queue more then 20 mins is almost 0, but the 
# probability form bigger amount of people is more likely

#   (∗∗) e) Does the i.i.d. assumption hold here at all?"
# independend identially dustributed does not hold for all situations. 
# in our case 36 people in the queue is not so many, maybe that is the time where less people travel, 
# but diring the time when the airport is more occupated (more people) the statements which we assumed here cannot identically

