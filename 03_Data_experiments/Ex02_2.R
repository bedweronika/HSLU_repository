df <- read.csv('./Out_Data/lecture2_gdp_life_expectancy.csv')
head(df)


# 1. How many variables and how many observations are in the dataset?
dim(df)   #  [1] 192   8
# 8 variables, 192 observations


#2. Classify each variable into a variable type.
summary(df)
"
      country          iso3c           region         capital      longitude          latitude           gdppc          life_expectancy
 Length   :192   Length   :192   Length   :192   Length   :192   Min.   :-175.22   Min.   :-41.286   Min.   :  0.1921   Min.   :54.46  
 N.unique :192   N.unique :192   N.unique :  7   N.unique :188   1st Qu.: -11.40   1st Qu.:  3.595   1st Qu.:  2.5538   1st Qu.:67.76  
 N.blank  :  0   N.blank  :  0   N.blank  :  0   N.blank  :  5   Median :  20.14   Median : 17.646   Median :  7.6432   Median :74.42  
 Min.nchar:  4   Min.nchar:  3   Min.nchar: 10   Min.nchar:  0   Mean   :  19.96   Mean   : 18.794   Mean   : 19.6076   Mean   :73.55  
 Max.nchar: 25   Max.nchar:  3   Max.nchar: 26   Max.nchar: 19   3rd Qu.:  50.76   3rd Qu.: 40.077   3rd Qu.: 25.3517   3rd Qu.:78.49  
                                                                 Max.   : 179.09   Max.   : 64.184   Max.   :132.6044   Max.   :85.25  
                                                                 NAs    :4         NAs    :4  
"

# 3. Calculate the mean of gdppc and life_expectancy per region. What do you observe?
mean(df$gdppc)   #  [1] 19.6076
mean(df$life_expectancy)   #  [1] 73.54953



# 4. Create a graph of the relationship between gdppc and life_expectancy at the regional level (as calculated in (3)). 
plot(df$gdppc, df$life_expectancy)
