####### LAB  EXERCISE #######

#Study the following functions:
  
#cat()
#density()
#hist()
#if()
#plot()
#summary()

#Access the help files with the ? operator. For if() you should enclose it in double quotes: ?”if”). 

#Write a function called my.display() that takes as its argument a vector.
#The function should display the line  “summary of input:”  using the cat() function, and then a summary of the argument using the summary() function.
#You can use the character “\n” in a text string to indicate line shifts.

my.display<-function(x){
  cat("Summary of input: \n")
  return(summary(x))
}



#Expand my.display() to also contain an option for information on the argument in terms of a graph.

#This graph should be either a histogram (the hist() function), or a density plot (the plot() and density() functions).
#The histogram should by default list counts on the y axis (as hist() by default does), but my.display() should also contain an option for having frequencies 
#on the y-axis of a histogram rather than counts.
#If the call indicates that a graph is wanted, but it isn’t specified whether the graph should be a histogram or a density plot, no plot should be generated.
#Instead, the function should display the line ”Please specify type as either hist or density” , where ‘hist’ and ‘density’ are the identifiers used to indicate 
#if the plot should generate a histogram or a density plot, and ‘type’ is the variable that stores this information. 

set.seed(1234)
my.data<-rnorm(200)
my.display(my.data)
hist(my.data)