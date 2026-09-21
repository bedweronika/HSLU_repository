setwd(".")  # set working directory
temp <- read.csv("weather.csv", header=TRUE, sep=";")
temp

?apply
apply(temp[2:5], MARGIN=2, FUN=mean)
'
Luzern    Basel     Chur   Zurich 
13.16667 13.00000 11.50000 12.66667
'

apply(temp[2:5], MARGIN=1, FUN=median)   ## [1]  3.0  3.0 10.5 15.0 21.0 24.0



which.min(temp[4,])
# Basel 
# 3 

temp[4,][c(1, 2)]
'
    X Luzern
4 Apr     16
'

temp[4,][which.min(temp[4, ])]  
'
Basel
4    12
'
