setwd(".")  # set working directory

##################### 1. 
# a) Load the dataset and save it under the variable data.
temp <- read.csv("weather.csv", header=TRUE, sep=";")
temp

# b) Select the value of the second row and third column.
temp[2,][3]
'
  Basel
2     6
'

# c) Select the 4th row.
temp[, 4]   ## [1] -3  1 13 14 21 23

# d) Select the 2st and 5th column.
temp[,c(2, 5)]

# e) Save the above data under the name data1 and save it as a file under the name weather2.csv.
data1 <- temp[,c(2, 5)]
write.csv(data1,  file ="weather2.csv")

# f) How can you find out which is the name of the 3rd column?
colnames(temp)[3]

# g) We want to replace the columns Basel with Geneva.a
colnames(temp)[3] <- c("Geneva")
temp

# h) We consider the command 
data3 <- temp [order(temp[, 'Zurich']), ]
data3