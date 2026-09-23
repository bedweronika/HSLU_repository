'
In a class, the following grades were achieved in a statistics test:
4.2, 2.3, 5.6, 4.5, 4.8, 3.9, 5.9, 2.4, 5.9, 6, 4, 3.7, 5, 5.2, 4.5, 3.6, 5, 6, 2.8, 3.3, 5.5, 4.2, 4.9, 5.1
Alter three grades in the dataset such that the median remains the same, but the mean
decreases as significantly as possible.
Hint: Use the sort(...) command to do this.
'

# grades from statistic tests
grades <- c(4.2, 2.3, 5.6, 4.5, 4.8, 3.9, 5.9, 2.4, 5.9, 6, 4, 3.7, 5, 5.2, 4.5, 3.6, 5, 6, 2.8, 3.3, 5.5, 4.2, 4.9, 5.1)
grades

# mean and median
mean(grades)
median(grades)


# srted grades which will be changed
newgrades <- sort(grades)
newgrades

newgrades[1:11] <- 1.0
newgrades[13:length(newgrades)] <- 4.8
newgrades
mean(newgrades)
median(newgrades)