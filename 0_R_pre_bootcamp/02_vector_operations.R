z_1 <- c(3, 4, 6, -2, 7)
z_2 <- 1:5
various <- c(2, 'sad', 5.3, 'YES', 'beautiful', "sad")


4*z_1   ## [1] 12 16 24 -8 28
z_1 * z_2   ## [1]  3  8 18 -8 35  
## 1. element from z_1 multiplied with first element from z_2, 
## 2. element from z_1 multiplied with second element from z_2, 
## and so on...
3*various  ## ERROR we cannot multiplied numeric with non-numeric argument
various[2]   ## [1] "sad"   ## in R the first element in the vector has index 1 
various[1,3]   # Error in various[1, 3] : incorrect number of dimensions
various[c(1,3)]   ## [1] "2"   "5.3"
various[2:6]   ## "sad"       "5.3"       "YES"       "beautiful" "sad" 