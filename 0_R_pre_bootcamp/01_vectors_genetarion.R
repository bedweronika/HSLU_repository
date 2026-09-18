z_1 <- c(3, 4, 4.5, -2, 7)  ## the entries in a the vector are named components
z_1                        ## c(...) method "glues" the entries It create one object

## [1]  3.0  4.0  4.5 -2.0  7.0


z_2 <- c(1, 2, 3, 4, 5)
z_2

## [1] 1 2 3 4 5


various <- c(2, 'sad', 5.3, 'YES', 'beautiful', 'sad')
various

# [1] "2"         "sad"       "5.3"       "YES"       "beautiful" "sad"


#########

a <- c(1, 2)
b <- c(2, 1)

identical(a, b)   ## [1] FALSE

#########

z_2 <- 1:5
z_2   # [1] 1 2 3 4 5

a <- -3:4
a   # [1] -3 -2 -1  0  1  2  3  4