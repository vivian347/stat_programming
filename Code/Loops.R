#IF...ELSE STATEMENTS
#evaluating if  a condition is met and returning a specific value if true
x=5
if(x>3){
  y =10
}else{
  y=0
}
y

#exam score
exam =16
if(exam <12){
  print("Passable")
}else if(12<exam & exam <14){
  print("Good")
}else{
  print("Very Good")
}


#use if else to have a vector function that returns a vector of the same length as conditon formed
#if less than 18 years of age classified as minor else voter
ages = c(12,18,32,2,4)
ifelse(ages<18, "Minor","Voter")



###############################FOR LOOPS###############################

#Loop to add integers from 1 to 100
current.sum = 0
for(i in 1:100){
  current.sum = current.sum + i
}
current.sum

#add the integers from 1:100 without loop
sum(1:100)


#for loop over a matrix
 #create a matrix
mat <-matrix(10:21, nrow=6, ncol = 2)
   #create the loop with r and c to iterate over the matrix
for(r in 1:nrow(mat)){
  for (c in 1:ncol(mat)) {
    print(paste("Row", r, "and column", c, "have values of",mat[r,c]))
  }
}

#Using for loop to create multiple graphs
#first few rows of exam data
examscores<-matrix(c(43,31,68,34,61,27,56,39,37,41,74,46,54,36,62,41,56,34,82,40,73,29,79,35),nrow=6, ncol=4,byrow=TRUE)
colnames(examscores)<-c("a","b","c", "d")
rownames(examscores)<-c(1,2,3,4,5,6)
#first set up a 2*2 plotting space
par(mfrow= c(2,2))
#create the loop.vector(all the columns)
loop.vector <- 1:4
for (i in loop.vector) {#loop over loop.vector
  #store data in col i as x
  x <- examscores[,i]
  #plot histogram of x
  hist(x,
       main = paste("Question", i),
       xlab = "Scores",
       xlim = c(0,100)
       )
  
}

#use a loop to calculate how many students failed each of the four exams(score<50)

#create a container object of 4 NA values
failure.percent <- rep(NA, 4)
for(i in 1:4){
  #loop over columns 1 through 4
  #get scores for the ith col
  x=examscores[,1]
  
  #calculate the % of failure
  failures.i <- mean(x < 50)
  
  #assign result to the ith value of failure.percent
  failure.percent[i] <- failures.i
}
failure.percent