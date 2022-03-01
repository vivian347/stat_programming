###Normal distribution
norm<- rnorm(100,mean=0,sd=1)
norm1<- rnorm(1000,mean=0.7,sd=0.3)
norm2<- rnorm(10000,mean=0.8,sd=0.4)
norm3<- rnorm(100000,mean=0.5,sd=0.2)

#plots
par(mfrow=c(2,2))
hist(norm,probability =TRUE, main = "n =100")
lines(density(norm))
hist(norm1,probability =TRUE, main = "n =1000")
lines(density(norm1))
hist(norm2,probability =TRUE, main = "n =10000")
lines(density(norm2))
hist(norm3,probability =TRUE, main = "n =100000")
lines(density(norm3))