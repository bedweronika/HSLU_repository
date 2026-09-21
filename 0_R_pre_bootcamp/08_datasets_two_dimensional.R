setwd(".")  # set working directory

?read.csv
temp <- read.csv("weather.csv", header=TRUE, sep=";")
temp

dim(temp)   ##  [1] 6 5
colnames(temp)   ##  [1] "X"      "Luzern" "Basel"  "Chur"   "Zurich"
rownames(temp)   ##  [1] "1" "2" "3" "4" "5" "6"

summary(temp)
'
         X         Luzern          Basel            Chur           Zurich     
 Length   :6   Min.   : 2.00   Min.   : 5.00   Min.   :-3.00   Min.   : 0.00  
 N.unique :6   1st Qu.: 6.25   1st Qu.: 7.25   1st Qu.: 4.00   1st Qu.: 5.00  
 N.blank  :0   Median :13.00   Median :11.50   Median :13.50   Median :12.50  
 Min.nchar:3   Mean   :13.17   Mean   :13.00   Mean   :11.50   Mean   :12.67  
 Max.nchar:3   3rd Qu.:19.75   3rd Qu.:18.75   3rd Qu.:19.25   3rd Qu.:19.25  
               Max.   :25.00   Max.   :23.00   Max.   :23.00   Max.   :27.00  
'

temp[2, 4]   ## [1] 1
temp["1", ]
'
  X Luzern Basel Chur Zurich
1 Jan      2     5   -3      4
'

temp[,"Basel"]   ##  [1]  5  6 11 12 23 21
temp["Basel"]
'
Basel
1     5
2     6
3    11
4    12
5    23
6    21
'

mean(temp[, "Luzern"])   ##  [1] 13.16667
 

temp1 <- temp[c(1, 5), c("Chur", "Zurich")]
temp1
'
  Chur Zurich
1   -3      4
5   21     20
'
write.csv(temp1, file = "weather1.csv")
          
          