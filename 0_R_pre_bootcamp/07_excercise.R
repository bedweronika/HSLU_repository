winner <- c(191, 185, 185, 182, 182, 188, 188, 188, 185, 185, 177, 182, 182, 193, 183, 179, 179, 175)
opponent <- c(165, 187, 175, 193, 185, 187, 188, 173, 180, 177, 183, 185, 180, 180, 182, 178, 178, 173)


# a) Determine the length of the two vectors. This way you can also check whether there are the same number of entries in both vectors.
c("winner vector length: ", length(winner), "opponent vector length: ", length(opponent))
   ## [1] "winner vector length: "   "18"                       "opponent vector length: " "18"


# b) Determine the entries 6. to 10. entry of the vector winner. To do this, use the bracketed spelling winner[...].
winner[6:10]   ## [1] 188 188 188 185 185


# c) Specify the 3rd, 5th and 10th to 12th entry.
c(winner[3], winner[5], winner[10:12])   ##[1] 185 182 185 177 182
winner[c(3, 5, 10:12)]   ## [1] 185 182 185 177 182


# d) The Washington Post has determined that the entries for Bill Clinton (6th and 7th entry) are too small. 
# He has a height of 189 cm. Change the entries in the vector winner accordingly and output the new vector again to see whether the changes were made.
winner[6] <- 189
winner[7] <- 189
winner   ##  [1] 191 185 185 182 182 189 189 188 185 185 177 182 182 193 183 179 179 175


# e) The claim is that the winners are taller than the challengers. Check this by comparing the mean values of the vectors.
c("winner mean ", mean(winner), "opponent mean: ", mean(opponent))
   ## [1] "winner mean "     "183.944444444444" "opponent mean: "  "180.5"    


# f) Determine the average size difference.
difference <- mean(winner) - mean(opponent)
difference   ## [1] 3.444444

# g) Determine the variance s2 and the standard deviation s of the vector winner.
variance <- var(winner)
variance   ## [1] 23.34967
std <- sd(winner)
std   ## [1] 4.83215


# h) Determine these values without using the implemented functions.
variance.2 <- sum((winner - mean(winner))^2) / (length(winner) - 1)
variance.2   ##  [1] 23.34967
standard.dev <- sqrt(variance.2)
standard.dev   ##  [1] 4.83215




###################################




# a) A frequently used command is the seq(...) command. 
?seq 
  ## or 
help(seq)

  # I.Explain how this command works with the options by and length.out.

     ### seq(from = 1, to = 1, by = ((to - from)/(length.out - 1)), length.out = NULL, along.with = NULL, ...)
  # by	   number: increment of the sequence.
  # length.out	   desired length of the sequence. A non-negative number, which for seq and seq.int will be rounded up if fractional.

  # II. Create a vector that starts at 2016 and ends at 1948. The distance between the entries should be 4 (see first column in table 1).
  z <- seq(2016, 1948, by=-4)
  z   ##   [1] 2016 2012 2008 2004 2000 1996 1992 1988 1984 1980 1976 1972 1968 1964 1960 1956 1952 1948


# b) We have given the following vector
x <- c(4, 10, 3, NA, NA, 1, 8)
x  ## [1]  4 10  3 NA NA  1  8

  # I. If we take the mean value of x (mean(x)), the result is NA.
  mean(x)   ##  [1] NA
  
  # II. How can you form the mean value of all occurring values?
  ?mean
  mean(x, na.rm=TRUE)   ##  [1] 5.2
  
  # III. Apply the commands sort(...) and order(...) to the vector x.
  x   ##  [1]  4 10  3 NA NA  1  8
  sort(x)   ## [1]  1  3  4  8 10 
  order(x)   ##  [1] 6 3 1 7 2 4 5
  
  ?sort
  sort(x, na.last=FALSE)   ## [1] NA NA  1  3  4  8 10
  ?order
  order(x, na.last=FALSE)   ##  [1] 4 5 6 3 1 7 2
  order(x, na.last=TRUE)   ##  [1] 6 3 1 7 2 4 5




###################################




# c) Plots
  x <- c(4, 2, 8, 9, 7, 5, 2, 1)
  plot(x)

  # I. In the following command change the parameters of the options and describe what these options do.
  ?plot
  ?abline
  
  plot(x,
       type = "l",     ##  type of plot (p-points, l - lines, b - both, etc. )
       col = "blue",     ##  The colors for lines and points.
       lty = 2,     ##  a vector of line types
       main = "main title",     ##  a main title for the plot,
       xlab = "A few numbers",     ##  a label for the x axis
       ylab = "other numbers"     ##  a label for the y axis
  )
  # II. Add three lines to the graphic above with the command abline(...).
    #• A vertical straight line x = 3, solid green.
  abline(v=3,col="green", lty=1)
    #• A horizontal straight line y = 4, dotted, red.
  abline(h=4,col="red", lty=3)
    #• A straight line y = 2x + 1, dotted with long lines, brown.
  abline(a=1, b=2, col="brown", lty=5)


'
lty
The line type. Line types can either be specified as an integer 
(0=blank, 1=solid (default), 2=dashed, 3=dotted, 4=dotdash, 5=longdash, 6=twodash) 
or as one of the character strings 
"blank", "solid", "dashed", "dotted", "dotdash", "longdash", or "twodash", where "blank" uses ‘invisible lines’ (i.e., does not draw them).
'