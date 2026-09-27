setwd('.')

#  In the file Diet.csv 76 persons are listed, who each followed one of the diets 1,2 or 3 for 6 weeks.
diet <- read.csv("./Problem02_files/Diet.csv")
head(diet)

# Add column weight.loss
diet$weight.loss <- diet$weight6weeks - diet$pre.weight
head(diet)


summary(diet)


boxplot(diet$weight.loss)
