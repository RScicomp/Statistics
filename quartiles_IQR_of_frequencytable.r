#Quartiles
inputs <- as.integer(unlist(strsplit(readline(),"\\s" )))
#The quantile function. Takes in the inputs anda numeric vector consisting of wanted percentiles. 
Quantiles = function(x){
  quantile(x,c(0.25,0.5,0.75), type = 1 )
}
Q<-Quantiles(inputs)
write("The 25th percentile or Q1 is:",stdout() ); write(Q[1],stdout())
write("The 50th percentile or Q2 is:",stdout() ); write(Q[2],stdout())
write("The 75th percentile or Q3 is:",stdout() ); write(Q[3],stdout())

#____________________________________________________________________________
#Interquartile Range:
inputs <- as.integer(unlist(strsplit(readline(),"\\s" )))
frequency <- as.integer(unlist(strsplit(readline(),"\\s" )))


#We have frequency. We must repeat each number by that amount in a new vector
Data = function(x=inputs,y=frequency){
  counter = 1
  length = length(y)
  while (counter <= length){
    loops = y[counter]-1
    while(loops != 0){
      x[[length(x)+1]] <- x[counter]
      loops = loops - 1 
    }
    counter = counter + 1
  }
  x
}
#gives us the quantiles
Quantiles = function(x){
  quantile(x,c(0.25,0.5,0.75), type = 1 )
}

newData <- sort(Data(), decreasing = FALSE)
quantiles <- Quantiles(newData)
interQuartile <- quantiles[3] - quantiles[1]

write("The interquartile range is", stdout()); write(interQuartile, stdout())
