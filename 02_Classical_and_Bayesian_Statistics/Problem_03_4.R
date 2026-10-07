# a) Examine the data set with head(Carseat) and ?Carseat.
?Carseats


# b) Find a multiple regression model with lm() to predict Sales from Price, Urban and US.
lr <-lm(Sales ~ Price + Urban + US, data=Carseats)
summary(lr)
levels(Carseats$Urban)
levels(Carseats$US)
contrasts(Carseats$Urban)
contrasts(Carseats$US)

"
Model: 
Sales = 13.04 - 0.05*Price - 0.02*UbanYes + 1.20*USYes
"
# Sales:    Unit sales (in thousands) at each location
# Price:    Price company charges for car seats at each site
# Urban:    A factor with levels No and Yes to indicate whether the store is in an urban or rural location
# US:       A factor with levels No and Yes to indicate whether the store is in the US or not



# c) Interpret the coefficients in this model. Be aware that some variables are qualitative.
head(Carseats[c("Sales","Price", "Urban","US")], 15)

# coefficient 13.04:  13.04 represents the predicted number of unit sales (in thousands) when Price = $0, Urban = No, and US = No.
# coefficient -0.05:  Holding US and Urban constant, an increase in Price by 1 unit is associated with a decrease in Sales by approximately 0.0544 units (in thousands)
# coefficient -0.02:  Holding Price and US constant, the predicted number of unit sales is 0.02 (in thousands) units lower in urban storied than in rural stories
# coefficient 1.2:  Holding Price and Urban constant, the predicted number of unit sales is 1.2 (in thousands) units higer within US than outside US


# d) Write the model as an equation. Make sure that you treat the qualitative variables correctly

# Dummy variables:
# Urban = 1 if i.th person lives in urban area, or 0 if i.th person lives in rural area
# US = 1 if i.th person lives in USA, or 0 if i.th person lives outside USA

"
MODEL:
y_i = 
= β_0 + β_1*Price + β_2*Urban + β_3*US + ε_1 =
= β_0 + β_1*Price + 
OR:
β_2*1 + β_3*1 + ε_1:                  if i.th person lives in urban area in USA
β_2*1 + β_3*0 + ε_1 = β_2*1 + ε_1:    if i.th person lives in urban area outside USA
β_2*0 + β_3*1 + ε_1 = β_3*1 + ε_1:    if i.th person lives in rural area in USA
β_2*0 + β_3*0 + ε_1 = ε_1:            if i.th person lives in rural area outside USA
"
