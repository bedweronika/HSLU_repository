## 1.  
## The following temperatures are given in degrees Fahrenheit (°F) 51.9, 51.8, 51.9, 53

## a. Form a vector fahrenheit with these values.
fahrenheit <- c(51.9, 51.8, 51.9, 53)
fahrenheit   ## [1] 51.9 51.8 51.9 53.0

## b. Convert these temperatures into degrees Celsius (◦C). Form a vector celsius.
celsius <- 5*(fahrenheit-32)/9
celsius   ## [1] 11.05556 11.00000 11.05556 11.66667

## c. Given are further temperatures 48, 48.2, 48, 48.7
## Determine the difference to the original temperatures. Use vectors again.
fahrenheit_2 <- c(48, 48.2, 48, 48.7)
diffs <- fahrenheit_2 - fahrenheit
diffs   ## [1] -3.9 -3.6 -3.9 -4.3

############################

## 2. This task discusses some simple R commands.

## a) Form a vector x with the numbers 4, 2, 1, 3, 3, 5, 7.
x <- c(4, 2, 1, 3, 3, 5, 7)
x   ## 4, 2, 1, 3, 3, 5, 7

## b) Access with R the third value.
x[3]   ## [1] 1

## c) Access with R the first and fourth value.
x[c(1, 4)]   ## [1] 4 3

## d) Determine the length of the vector x.
length(x)   ## [1] 7

## e) What does the command x+2 do? Make a guess first and then execute the command.
x+2   # [1] 6 4 3 5 5 7 9
## Add 2 to each element

## f) What does the command sum(x+2) do? Make a guess first and then execute the command.
sum(x+2)   ## 39
## add 2 to each component in vector x and make a sum

## g) What does the command x <= 3 do? Make a guess first and then execute the command.
x <=3   ## [1] FALSE  TRUE  TRUE  TRUE  TRUE FALSE FALSE
x >=3   ## [1]  TRUE FALSE FALSE  TRUE  TRUE  TRUE  TRUE
##  returns a vector where each component in vector x if it smaller or equal (<=)  OR  bigger or equal of 3 

## h) What does the command x[x <= 3] do? Make a guess first and then execute the command.
x[x <= 3]   ## [1] 2 1 3 3
## returns vector with the components which are smaller or equal 3 

## i) We want to replace the value of the 4th entry of x with the number 8. How do you do this?
x[4] <- 8
x   ## [1] 4 2 1 8 3 5 7

## j) What does the command sort(x) do? Make a guess first and then execute the command
sort(x)   ## [1] 1 2 3 4 5 7 8

## k) 
##(i) What does the command order(x) do? Make a guess first and then ex ecute the command. Compare the values of order(x) with the values of x.
x   ## [1] 4 2 1 8 3 5 7
order(x)   ## [1] 3 2 5 1 6 7 4
## order(x) to get the indices that would sort a vector—ideal for sorting data frames


##(ii) What is the order command good for? Consider the following data frame.
Name = c("Charlie","Anne", "Bert","Denise")
Age = c(68,24,76,27)
Status = c("old","young","retired","single")

df = data.frame(Name, Age, Status)
df
#     Name Age  Status
#1 Charlie  68     old
#2    Anne  24   young
#3    Bert  76 retired
#4  Denise  27  single

df[c(2, 4, 1, 3),]
" 
     Name Age  Status
2    Anne  24   young
4  Denise  27  single
1 Charlie  68     old
3    Bert  76 retired
"

df[c(order(Name)),]
"
     Name Age  Status
2    Anne  24   young
3    Bert  76 retired
1 Charlie  68     old
4  Denise  27  single
"
