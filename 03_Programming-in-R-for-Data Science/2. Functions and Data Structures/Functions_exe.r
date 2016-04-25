### Exercise 2.1:

#a)Study the function paste() via its help page and use it to paste together the string 
#”R session” and the number 1. What type of object is returned?

paste(c("R session"),1)
class(paste(c("R session"),1))
#"character"

#b) What happens if we try to add a number to a data frame containing only numbers?

my.data <- data.frame(data1=rnorm(3),
                      data2=rnorm(3))
my.data

#   data1       data2
#1  1.12656824  0.7763308
#2 -0.19880861  0.7035613
#3  0.09998649 -0.1077618

my.data+5

#  data1    data2
#1 6.126568 5.776331
#2 4.801191 5.703561
#3 5.099986 4.892238

#c) What happens if we try to add a number to a data frame with both number 
#columns and character columns?

my.data2 <- data.frame(data1=rnorm(3),
                      data2=c("A","B","C"))

my.data2

#   data1         data2
#1 -0.4025458     A
#2  1.1690147     B
#3 -1.1233007     C

my.data2+5

#  data1       data2
#1 4.597454    NA
#2 6.169015    NA
#3 3.876699    NA

### Exercise 2.2:

#a)Create a function that takes a vector of numbers and returns the standardized 
#values; ie. the data with the mean subtracted and rescaled so that the variance is 1.  

my.first.function <- function(x){(x-mean(x))/sd(x)
  
}

#creates random numbers and store to "y"
set.seed(88)
y<-rnorm(100)*5+2

mean(y)
#2.052226
sd(y)
#4.966659

#use of our function with sd = 1
z <- my.first.function(y)

mean(z)
#6.53512e-17
sd(z)
#1

plot(y,z)

#b) Describe what happens if you apply your function to a vector of length 1, and 
#why


### Exercise 2.3:

#Consider the function 

# f(x)= 3*sin(x/2)+2

#a) Define a similar function f in R. Calculate f(0),f(-1),f(pi)

f <- function(x){3*sin(x/2)+x
  
}

f(0)  # 0
f(-1) # -2.438277
f(pi) # 6.141593

#b) Write a script that plots the function f over the interval from 
#(-7 to 7). Save the  script on your system and close it. Then, execute the script in R with the source() 
#command.

plot(f,-7,7)
source("myscript.r")

##################################################################

### 1. What is the type of the vector x, when x is defined as follows?

x <- c("b", 2,  TRUE)
class(x)

#[1] "character"

### 2.The vector y is defined as follows:
  
y <- c(1, 2, 3.14, 4, 5)

#What will be returned when you show the value y in the console? 

y
#[1] 1.00 2.00 3.14 4.00 5.00

### 3.The vector z is defined as follows:
  
z <- c(FALSE, TRUE, 2, 3, 4)

#What will be returned when you show the value z in the console?
z
#[1] 0 1 2 3 4

### 4.How many elements are TRUE when you create a matrix with the following command?


matrix(c(5,4,3,2,1,0)+2,nrow=2)<5

### 5. Which data type in R can hold different type of elements?
# Data Frame

### 6. Which three of the following options are functions?

#c()
#sin()
#plot()

### 7. How many mandatory (required) argument(s) does the sin() function has?

# 1.

### 8. You are defining a simple function called addsub that takes two arguments. 
#The function should return a vector that contains two elements. The first element 
#is the addition of both arguments. The second element is the first argument subtracted 
#by the second argument. If both arguments are not supplied, the function should return 
#two zeros instead.

addsub<-function(x=0,y=0){ return(c(x+y,x-y)) }
addsub()

### 9. You are examining the following code.

a <- 7 
b <- 5 

myfunc <- function(x,y){
  a <- x+y 
  b <- x-y 
  return(a*b) 
} 

#What will be printed in the console when you call the function and 
#pass 3 and 4 as the first and second parameters respectively?

myfunc(3,4)
# -7

### 10. Which of the following code resembles the plot below?
plot(sin, -pi, pi) 