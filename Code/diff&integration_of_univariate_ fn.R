#DIFFERENTIATION
# y = x^2+3x2
f<- expression(x^2+ 3*x+2)
D(f,"x")
 
#3x^2-2x+4
f<- expression(3*x^2-2*x+4)
D(f,"x")
 
#y = e^(-x^2)
y<- expression(exp(-(x^-2)))
D(y,"x")

#cos(2*t)
y = expression(cos(2*x))
D(y, "x")

#find second derivative y = 3xcos(xy)
#FD
FD = D(expression(3*x*cos(x*y)),"x")
#sd
SD = D(FD, "x")
SD
FD
