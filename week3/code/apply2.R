
SomeOperation <- function(v) { # (What does this function do?)
# Get the sum of the elements in v
  if (sum(v) > 0) { #note that sum(v) is a single (scalar) value
    # If the sum is positive, multiply each element by 100
    return (v * 100)
  } else { 
    # Otherwise, just return the original vector
    return (v)
  }
}

M <- matrix(rnorm(100), 10, 10) # Create a 10x10 matrix of random numbers
print (apply(M, 1, SomeOperation))# Apply over rows of M