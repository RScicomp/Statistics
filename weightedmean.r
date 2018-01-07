#weighted mean
inputs <- readline()
weights <- readline()

inputs <- as.integer(unlist(strsplit(inputs, "\\s")))
weights <- as.integer(unlist(strsplit(weights, "\\s")))

weightedmean <- weighted.mean(inputs,weights)

write("weighted mean is: ",stdout()); write(weightedmean, stdout())
