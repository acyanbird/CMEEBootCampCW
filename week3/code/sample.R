######### Functions ##########

## A function to take a sample of size n from a population "popn" and return its mean
myexperiment <- function(popn,n) {
  pop_sample <- sample(popn, n, replace = FALSE)
  return(mean(pop_sample))
}

## Calculate means using a FOR loop on a vector without preallocation:
## This is the slowest method 
loopy_sample1 <- function(popn, n, num) {
  result1 <- vector() #Initialize empty vector of size 1 
  for(i in 1:num) {
    result1 <- c(result1, myexperiment(popn, n))
  }
  return(result1)
}

## To run "num" iterations of the experiment using a FOR loop on a vector with preallocation:
# This is faster than without preallocation
loopy_sample2 <- function(popn, n, num) {
  result2 <- vector(,num) #Preallocate expected size
  for(i in 1:num) {
    result2[i] <- myexperiment(popn, n)
  }
  return(result2)
}

## To run "num" iterations of the experiment using a FOR loop on a list with preallocation:
# We use lists here
loopy_sample3 <- function(popn, n, num) {
  result3 <- vector("list", num) #Preallocate expected size
  for(i in 1:num) {
    result3[[i]] <- myexperiment(popn, n)
  }
  return(result3)
}


## To run "num" iterations of the experiment using vectorization with lapply:
# The result is a list
lapply_sample <- function(popn, n, num) {
  result4 <- lapply(1:num, function(i) myexperiment(popn, n))
  return(result4)
}

## To run "num" iterations of the experiment using vectorization with sapply:
# The result is a vector because sapply simplifies the list to a vector
sapply_sample <- function(popn, n, num) {
  result5 <- sapply(1:num, function(i) myexperiment(popn, n))
  return(result5)
}

n <- 100 # sample size for each experiment
num <- 10000 # Number of times to rerun the experiment

set.seed(54321)
popn <- rnorm(10000) # Generate the population
#hist(popn)

print("Using loops without preallocation on a vector took:" )
print(system.time(loopy_sample1(popn, n, num)))

print("Using loops with preallocation on a vector took:" )
print(system.time(loopy_sample2(popn, n, num)))

print("Using loops with preallocation on a list took:" )
print(system.time(loopy_sample3(popn, n, num)))

print("Using the vectorized sapply function (on a list) took:" )
print(system.time(sapply_sample(popn, n, num)))

print("Using the vectorized lapply function (on a list) took:" )
print(system.time(lapply_sample(popn, n, num)))