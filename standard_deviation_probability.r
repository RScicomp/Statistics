#_____________________________________________________________________________________________
#Standard Deviation
inputs <- as.integer(unlist(strsplit(readline(),"\\s" )))
sd(inputs)

#______________________________________________________________________________________________
#Calculating Basic Probability
#Tossing two fair (evenly weighted) six sided dice: There is a 1/6 change for each side. there are 12 outcomes. 36 combinations. 
#of the 12 outcomes:

#1 occurs never
#2 occurs via permutations: (1,1) -> 1 combo
#3 occurs via permutations: (1,2) -> 2 combos
#4 occurs via permutations: (1,3), (2,2) -> 3 combos
#5 occurs via permutations: (3,2), (4,1) -> 4 combos
#6 occurs via permutations: (3,3), (4,2), (5,1) -> 4 combos
#7 occurs via permutations: (1,6),(2,5),(3,4) -> 6 combos
#8 occurs via permutations: (2,6),(3,5),(4,4) -> 4 combos
#9 occurs via permutations: (3,6),(4,5) -> 4 combos
#10 occurs via permutations: (4,6),(5,5) -> 3 combos
#11 occurs via permutations: (5,6) -> 2 combos
#12 occurs via permutations: (6,6) -> 1 combo
#The probability of being at most 9 is: 1-6/36 = 1 - 1/6 = 5/6
