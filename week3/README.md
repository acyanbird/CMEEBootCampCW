## This week we include [Biological Computing in R](https://mulquabio.github.io/MQB/notebooks/R.html#)

### `basic_io.R`
This script demonstrates basic file input and output in R. It first reads data from a source CSV file, then shows how to write that data to a new file. Also shows how to modify the output by appending new rows or overwriting the file with different formatting options.

### `control_flow.R`
It shows fundamental control flow concepts. It shows how to use if-else statements to make decisions based on conditions, and how to use for and while loops to repeat actions. The examples cover iterating through a sequence of numbers and the elements of a vector.

### `boilerplate.R`
This file create a R function that takes two arguments, prints the data type of each, and then returns them combined into a single vector. After that it prints the answer.

### `R_conditionals.R`
This R script provides three simple functions to perform mathematical checks on numbers. The is.even function determines if a number is even or odd, is.power2 checks if the number a power of two, and is.prime check if a number is prime. Each function is defined and then demonstrated with a sample call.

### `TreeHeight.R`
This file using tree distance and angle of elevation to calculate height. It then reads tree data from a CSV file, applies this function to calculate the height for each tree, and adds these heights as a new column to the dataset. Finally, the script saves the updated data frame with the new height column to a new CSV file.

### `Vectorize1.R`
This script find the sum of all elements in this array. First, it uses for loops to add each number one by one and it is slow. Then, it uses R's simple sum() command to show that this built-in function is faster.

### `preallocate.R`
It uses two different funciton to show the different running time. We use system.time to find the timing, store them into variables and print out at the end.

### `apply1.R`
This code first creates a 10x10 matrix named "M" filled with 100 random numbers from a normal distribution. Then use `apply` to use function calculates and prints the mean and variance for each individual row. Then for the mean for each of the matrix's columns.

### `apply2.R`
Create a M 10x10 matrix of random numbers, then apply SomeOperation on each row of matrix. Get the sum of the elements in row, if greater than 0, multiply by 100. Or stay the same.

### `sample.R`
This script use 5 functions to show different way store mean of samples at the size of num.
First defines a function to calculate the mean of a random sample drawn from a population. Then using 5 different way to store results. We can see result1, result2 and result5 is vector of number, and 3 and 4 is list. Result1 is the slowest because not pre allocate the space.

### `try.R`
Firstly it define a function doit to get mean of sample over input value. But only with unique sample > 30 will work otherwise it would get error. Then use try (with output error message) to continue whole program without exit.

### `Vectorize2.R`

It first defining a slow function stochrick that uses inefficient nested loops. It then defines a much faster function stochrickvect that achieves the same result by vectorizing the calculations. It removing the inner loop, and processing all populations simultaneously for each year.