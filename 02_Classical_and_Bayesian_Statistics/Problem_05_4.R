"
In one place there are several carp ponds. The mass of the carp is normally distributed
with the expected value µ = 4 kg and the standard deviation 1.25 kg.
"

# a) What is the probability of catching a carp that is at most 2.5 kg?
pnorm(q=2.5, mean=4, sd=1.25) # [1] 0.1150697
# it is around 11%

# b) What is the probability of catching a carp that weighs at least 5 kg?
1 - pnorm(q=5, mean=4, sd=1.25)   # [1] 0.2118554
# it is around 21%

# c) What percentage of all carp weigh between 3 kg and 4.5 kg?
pnorm(q=4.5, mean=4, sd=1.25) - pnorm(q=3, mean=4, sd=1.25)   # [1] 0.4435663

# d) The Fishing Association wants to offer a prize for the heaviest carp.
# What is the minimum weight required to have a probability of 2 % of getting the
# prize
?pnorm
qnorm(p=0.98, mean=4, sd=1.25)  # [1] 6.567186
