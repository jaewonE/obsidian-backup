#
plot(mpg_power)

# scatter plot of mpg and horsepower
plot(Auto$horsepower, Auto$mpg, xlab="Horsepower", ylab="MPG")

# add least squares regression line to plot
abline(lm(mpg ~ horsepower, data = Auto))
