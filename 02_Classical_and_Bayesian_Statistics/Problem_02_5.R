head(anscombe)



# b) Produce a scatter plot each of the 4 data sets, draw the regression line and comment on the results.
par(mfrow=c(2,2))

plot(anscombe$x1, anscombe$y1, xlab="x1", ylab="y1")
reg <- lm(anscombe$y1 ~ anscombe$x1)
abline(reg, col="red")

plot(anscombe$x2, anscombe$y2, xlab="x2", ylab="y2")
reg <- lm(anscombe$y2 ~ anscombe$x2)
abline(reg, col="red")

plot(anscombe$x3, anscombe$y3, xlab="x3", ylab="y3")
reg <- lm(anscombe$y3 ~ anscombe$x3)
abline(reg, col="red")

plot(anscombe$x4, anscombe$y4, xlab="x4", ylab="y4")
reg <- lm(anscombe$y4 ~ anscombe$x4)
abline(reg, col="red")



# c) Compare a and b each, where y = a + bx
# lm(y1 ~ x1, data = anscombe)
# or
lm(anscombe$y1 ~ anscombe$x1)
"
Coefficients:
(Intercept)  anscombe$x1  
     3.0001       0.5001  
"

lm(anscombe$y2 ~ anscombe$x2)
"
Coefficients:
(Intercept)  anscombe$x2  
      3.001        0.500  
"

lm(anscombe$y3 ~ anscombe$x3)
"
Coefficients:
(Intercept)  anscombe$x3  
     3.0025       0.4997
"

lm(anscombe$y4 ~ anscombe$x4)
"
Coefficients:
(Intercept)  anscombe$x4  
     3.0017       0.4999 
"

# a and b for each xy pair is the same



# d) Determine the correlation coefficients. What stands out?
cor(anscombe$y1, anscombe$x1)   # [1] 0.8164205
cor(anscombe$y2, anscombe$x2)   # [1] 0.8162365
cor(anscombe$y3, anscombe$x3)   # [1] 0.8162867
cor(anscombe$y4, anscombe$x4)   # [1] 0.8165214

# Correlation coefficients is high for all pairs, and similar for each pair