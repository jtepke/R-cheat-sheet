#########################################
# Normal distributiion                  #
# 'd' -> density function               #
# 'p' -> cummulative density function   #
# 'q' -> p^(-1)                         #
# 'r' -> randomly generated numbers     #
#########################################

dnorm(0)
dnorm(0)*sqrt(2*pi)
dnorm(4,mean=4,sd=10)
x <- seq(-20,20,by=.1)
y <- dnorm(x)
plot(x,y)
y <- dnorm(x,mean=2.5,sd=0.1)

pnorm(0)
pnorm(0.5)
y <- pnorm(x)
plot(x,y)
y <- pnorm(x,mean=3,sd=8)
plot(x,y)

qnorm(0.5)
qnorm(0)
qnorm(1)
qnorm(0.5,mean=2,sd=4)
qnorm(0.25,mean=2,sd=2)
x <- seq(0,1,by=.05)
y <- qnorm(x)
plot(x,y)
y <- qnorm(x,mean=3,sd=2)
plot(x,y)
y <- qnorm(x,mean=3,sd=0.1)
plot(x,y)

rnorm(4)
rnorm(4,mean=3)
rnorm(4,mean=3,sd=3)
rnorm(4,mean=3,sd=3)
y <- rnorm(200)
hist(y)
y <- rnorm(200,mean=-2)
hist(y)
y <- rnorm(200,mean=-2,sd=4)
hist(y)
