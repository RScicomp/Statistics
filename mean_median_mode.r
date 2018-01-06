#This is code to find the mean, median and mode of a data set for example:
#64630 11735 14216 99233 14470  4978 73429 38120 51135 67060
#Take in inputs 
inputs <- readline()

#Take in inputs from second line
numbers <- as.integer(unlist(strsplit(inputs, "\\s")))

mean <- mean(numbers)
median <- median(numbers)

#Mode function taken from https://stackoverflow.com/questions/2547402/is-there-a-built-in-function-for-finding-the-mode
#returns a table of the numbers that occur the most (ie. in 2 2 4 3 3 it returns 2 and 3)
Mode = function(x){
  #unique takes in a vector and returns a vector without repeated values
  ux <- unique(x)
  #The match() function returns a vector of the position of first occurrence of the vector1 in vector2.
  #ie. if vector 1:  2 2 4 3 3 and vector 2: 2 4 3 it will return 1 1 2 3 3.
  #tabulate returns a table of how many times each value occurs in a vector. ie. if the input vector is: 1 1 2 3 3 tabulate will return 2 1 2
  #the operation within the vector index lets us get values that occur the most often. 
  tab <- tabulate(match(x, ux)); ux[tab == max(tab)]
}
modes = Mode(numbers)
if (length(modes) == length(numbers)){
  mode = "No Mode"
}else{
length = length(modes)
mode = sum(modes)/length
}

write(mean,stdout())
write(median,stdout())
write(mode, stdout())
