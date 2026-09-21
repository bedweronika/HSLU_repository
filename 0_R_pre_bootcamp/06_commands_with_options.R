z.3 <- c(5, 2, NA, 4)

min(z.3)   ## [1] NA
min(z.3, na.rm = TRUE)   ## [1] 2
# NA remove for particular option min

?min
