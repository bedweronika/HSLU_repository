weight <- c(60, 72, 57, 90, 95, 72)
height <- c(1.75, 1.80, 1.65, 1.90, 1.74, 1.91)

sum(weight)   ## [1] 446
length(weight)   ## [1] 6

x.bar <- sum(weight)/length(weight)
x.bar   ## [1] 74.33333

# mean
mean(weight)   ## [1] 74.33333
# variance
var(weight)   ## [1] 237.8667
# standard deviation
sd(weight)   ## [1] 15.42293

# min and max
min(weight)   ## [1] 57
max(weight)   ## [1] 95

length(weight)   ## [1] 6
