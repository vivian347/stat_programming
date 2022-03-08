#CONTINUOUS DIST
#Uniform dist
hh<- runif(10,0,1)
hh1<- runif(100,0,1)
hh2<- runif(1000,0,1)
hh3<- runif(10000,0,1)
par(mfrow = c(2,2))
hist(hh, main = "Sample size 10")
hist(hh1, main = "Sample size 100")
hist(hh2, main = "Sample size 1000")
hist(hh3, main = "Sample size 10000")


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

##Exponential dist
expa<- rexp(100,rate= 0.5)
expb<- rexp(1000,rate= 0.5)
expc<- rexp(10000,rate= 0.5)
expd<- rexp(100000,rate= 0.5)

#plots
par(mfrow=c(2,2))
hist(expa,probability = TRUE,main ="n = 100")
lines(density(expa))
hist(expb,probability = TRUE,main ="n = 1000")
lines(density(expb))
hist(expc,probability = TRUE,main ="n = 10000")
lines(density(expc))
hist(expd,probability = TRUE,main ="n = 100000")
lines(density(expd))

##Student t dist
ta<- rt(100,df = 5)
tb<- rt(1000,df = 5)
tc<- rt(10000,df = 5)
td<- rt(100000,df = 5)
#plot
par(mfrow = c(2,2))
hist(ta, probability = TRUE, main ="n = 100")
lines(density(ta))
hist(tb, probability = TRUE, main ="n = 1000")
lines(density(tb))
hist(tc, probability = TRUE, main ="n = 10000")
lines(density(tc))
hist(td, probability = TRUE, main ="n = 100000")
lines(density(td))

#chisquare dist
ta<-rchisq(100, df =5)
tb<-rchisq(1000, df =5)
tc<-rchisq(10000, df =5)
td<-rchisq(100000, df =5)
#plot
par(mfrow = c(2,2))
hist(ta, probability = TRUE, main ="n = 100")
lines(density(ta))
hist(tb, probability = TRUE, main ="n = 1000")
lines(density(tb))
hist(tc, probability = TRUE, main ="n = 10000")
lines(density(tc))
hist(td, probability = TRUE, main ="n = 100000")
lines(density(td))


##DISCRETE DIST
#Binomial dist

flips <- rbinom(1000,20,0.5)
hist(flips)

#Poisson dist
texts <- rpois(365, 20)
hist(texts)