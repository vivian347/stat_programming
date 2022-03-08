f<-function(x){x^2-2*x-3}
uniroot(f,c(1,4))

#solving linear system using matlib package5x-4y=-10 and -x+y =2
A<-matrix(c(5,-4,-1,1),2,2,TRUE)
b <- c(-10,2)
showEqn(A ,b)
#solve the equation
solve(A,b)
#plot the equation
plotEqn(A,b)
#reduced echelon form
echelon(A,b)
echelon(A, b, verbose = TRUE, fractions =TRUE)
 #SOLVE FOR x+y+2z =9, 2x+4y-3z=1,3x+6y-5z =0
A<- matrix(c(1,1,2,2,4,-3,3,6,-5),3,3,TRUE)
b<- c(9, 1,0)
showEqn(A,b)
Solve(A,b)
 

#solve for:
A<- matrix(c(1,2,3,2,5,9,5,7,8),3,3,TRUE)
b<- c(20,100,200)
showEqn(A,b)
solve(A,b, verbose = TRUE, fractions =TRUE)
