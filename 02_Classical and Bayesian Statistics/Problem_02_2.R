'We will use the InsectSprays data set that is already contained in R.'

head(InsectSprays)


# a) First we want to determine the average values of the individual sprays. For this purpose we use the R command tapply(...)
tapply(InsectSprays[, 'count'], InsectSprays[, 'spray'], FUN=mean)


# b) Now we want to make a box plot of the data. Since the data is ordered by the column spray, 
# R requires the input boxplot(y ~ x), where y are the values of which R is to take the box plot and x are the names by which the values are to be ordered.
boxplot(count ~ spray, data = InsectSprays, 
        col=c("orange", "blue", "darkseagreen", "deeppink", "brown", "aquamarine")
)
grid()
