#function that returns square of any number
square.function <- function(x){
  y <-x^2
  return (y)
}
#checking if function works
square.function(4)


##function that return area of circle of any radius

area.circle <- function(r){
  area<- pi*r^2
  return(area)
}
area.circle(6)

#function for days of the week
days<- c("Mon","Tue","Wed","Thur","Fri","Sat","Sun")
fun.days<-function(x){
  results<-ifelse(x==1,"The day is Mon",ifelse(x==2,"It is tuesday",ifelse(x==3,"It is Wednesday",ifelse(x==4,"Thursday",ifelse(x==5,"Friday",ifelse(x==6,"Saturday","Sunday"))))))
  return(results)
}
fun.days(2)


##fun that returns the mean,variance,and std of a numeric vector

my_fun3<-function(x){
  mu<-mean(x)
  variance<- var(x)
  return(list(mean = mu,variance = variance))
}
my_fun3(c(4,6,7,8,9))

#returns a list of the sum,product,maximum and minimum of a vector of values
my_fun4<-function(x){
  sum<-sum(x)
  product<-prod(x)
  maximum<- max(x)
  minimum<- min(x)
  return(list(sum = sum,product=product,maximum=maximum,minimum=minimum))
}
my_fun4(c(4,6,7,8,9))