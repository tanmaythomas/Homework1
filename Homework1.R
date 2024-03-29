x <- 1:50
w <- 1 + sqrt(x)/2
example1 <- data.frame(x=x, y= x + rnorm(x)*w)
attach(example1)

fm <- lm(y ~ x)
summary(fm)

lrf <- lowess(x, y)
plot(x, y)
lines(x, lrf$y)
abline(0, 1, lty=3)
abline(coef(fm))

detach()

rm(list = ls(all = TRUE))
setwd("C:/Users/tanmaythomas/Desktop/ecob2000_lecture1)
load("acs2017_ny_data.RData")

acs2017_ny[1:10,1:7]

attach(acs2017_ny)

summary(acs2017_ny)

glimpse(acs2017_ny)

print(NN_obs <- length(AGE))

summary(AGE[female == 1])

summary(AGE[!female])

mean(AGE[female == 1])

sd(AGE[female == 1])

mean(AGE[!female])

sd(AGE[!female])
