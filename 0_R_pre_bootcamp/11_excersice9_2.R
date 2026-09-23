setwd('.')

# a) Read the file d.fuel.dat
d.fuel <- read.table(file = "./d.fuel.dat", header = T, sep = ",")
d.fuel


# b) Select only the fifth line of the data frame d.fuel. Which values are in the fifth line?
d.fuel[5,]
'
  X weight mpg  type
5 5   2440  32 Small
'

# c) Now select the first to fifth observation of the dataframe d.fuel. 
# By the way, this way you can get a quick overview of the type of data frame in case of an unknown data set.
d.fuel[c(1, 5), ]
'
  X weight mpg  type
1 1   2560  33 Small
5 5   2440  32 Small
'

# d) Simultaneously display the 1st to 3rd and the 57th to 60th observation of the dataframe.
d.fuel[c(1:3, 57:60), ]
'
    X weight mpg  type
1   1   2560  33 Small
2   2   2345  33 Small
3   3   1845  37 Small
57 57   3735  19   Van
58 58   3415  20   Van
59 59   3185  20   Van
60 60   3690  19   Van
'

# e) Calculate the mean value of the ranges of all cars in miles/gallon.
d.fuel[, "mpg"]
mean(x)

# f) Calculate the average value of the range of cars 7 to 22.
mean(d.fuel[c(7:22),'mpg'])

# g) Create a new vector t.kml, which contains all ranges in km/L, and a vector t.kg, which contains all weights in kg.
t.kml <- d.fuel[, "mpg"] * 0.42514
t.kg <- d.fuel[,'weight'] * 3.785

# h) Calculate the mean value of the ranges in km/L and that of the vehicle weights in kg.
mean(t.kml)
mean(t.kg)

# i) Compare the mean and median of petrol consumption in L/100km.
mean(t.kml)
median(t.kml)