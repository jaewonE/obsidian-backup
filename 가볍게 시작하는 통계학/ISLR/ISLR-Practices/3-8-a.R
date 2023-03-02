library(ISLR)
data(Auto)
mpg_power <- lm(mpg~horsepower, data=Auto)
summary(mpg_power)