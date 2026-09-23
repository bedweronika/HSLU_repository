

setwd(".")  # set working directory
getwd()

##################### 1. 
# a) Load the dataset and save it under the variable data.
data <- read.csv("weather.csv")
data

# b) Select the value of the second row and third column.
data[2,][3]
'
    Chur
Feb    1
'

# c) Select the 4th row.
data[, 4]   ##  [1]  4  0  8 17 20 27

# d) Select the 1st and 4th column.
data[,c(1, 4)]
'
    Luzern Zurich
Jan      2      4
Feb      5      0
Mar     10      8
Apr     16     17
May     21     20
Jun     25     27
'

# e) Save the above data under the name data1 and save it as a file under the name weather2.csv.
data1 <- data[,c(1, 4)]
write.csv(data1,  file ="weather2.csv")

# f) How can you find out which is the name of the 3rd column?
colnames(data)[3]   ##  [1] "Chur"

# g) We want to replace the columns Basel with Geneva.a
colnames(data)[2] <- c("Geneva")
data

# h) We consider the command 
data3 <- data [order(data[, 'Zurich']), ]
data3
'
    Luzern Geneva Chur Zurich
Feb      5      6    1      0
Jan      2      5   -3      4
Mar     10     11   13      8
Apr     16     12   14     17
May     21     23   21     20
Jun     25     21   23     27
'