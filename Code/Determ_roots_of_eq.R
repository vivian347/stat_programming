#Root Finding
#using fn unitroot()
#solve f(x)=x^2 -2x-3
f<- function(x){
  x^2 - 2*x -3
}
uniroot(f, lower =1, upper =4)

uniroot.all(f, c(-2,4))
 #solve G(x1,x2) = x1^2+x2^2-1=0,x1^2-x2^2 +1=0
G<- function(x){
  c(x[1]^2 + x[2]^2-1, x[1]^2 -x[2]^2+1)
}
multiroot(G,start = c(1,1))

#LOCAL MAXIMA AND MINIMA OF UNIVARIATE FN
#if d^2y/dx^2 < 0 => maxima   if >0 =>minima

#find stationary point of f(x) = 3x^2 +2x -9
f <- function(x){
  3*x^2 + 2*x - 9
}
optimize(f, c(0,10),maximum= TRUE)

#find stationary point andhence determine the nature of the point 
# y = x^2 -2x + 3

ff<- function(x){
  x^2 -2*x + 3
}
optimize(ff,c(0,5),maximum = FALSE)

#PLOT
 curve(x^2- 2*x + 3, from = -1, to= 3)
 