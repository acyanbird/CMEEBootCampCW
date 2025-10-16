NoPreallocFun <- function(x) {
    a <- vector() # empty vector
    for (i in 1:x) {
        a <- c(a, i) # concatenate
        # print(a)
        # print(object.size(a))
    }
}


time_no_prealloc <- system.time(NoPreallocFun(1000))


PreallocFun <- function(x) {
    a <- rep(NA, x) # pre-allocated vector
    for (i in 1:x) {
        a[i] <- i # assign
        # print(a)
        # print(object.size(a))
    }
}

time_prealloc <- system.time(PreallocFun(1000))


cat("Without pre-allocation timing:\n")
print(time_no_prealloc)

cat("\nWith pre-allocation timing:\n")
print(time_prealloc)
