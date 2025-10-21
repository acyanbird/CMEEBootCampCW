## This week we include [Biological Computing in Python](https://mulquabio.github.io/MQB/notebooks/Python.html)
Introduce basic operation of python, and how to debug, using R within Python.

### `loops.py`
These code snippets demonstrate two fundamental types of loops in Python: the for loop and the while loop.

### `MyExampleScript.py`
this file defines a simple function named foo that calculates the square of any number passed to it. And show how to execute a code in one file.  

### `cfexercises1.py` 
It define several functions to do the calculation. Originally this program does not output anything. But after the modification, it is more module like. In the main function it will test foo using different number, and get the user input variables.   

### `cfexercises2.py` 
Also define functions to play with for and while loop. I explain every function inside the file. And all the function will run using given parameters.

### `Scope.py`
This file contains many functions that demonstrate the scope of a variable from different perspectives, including local and global variables.

#### Example 1
A simple for loop deal with variables. This example shows that variables defined outside a for loop can be modified from within it. Counter variable also retain its final value.

#### Example 2
This example demonstrates that functions have their own local scope. Calling the function does not affect the global variables unless the return value is used.

#### Example 3
This example illustrates that when you assign a value to a variable inside a function, Python creates a new local variable by default. If the name match a global variable it will be a shadow. So the global variable will remain unchanged. And call local variable outside function will cause a error.

#### Example 4
This demonstrates that you can read or access the value of a global variable from within a function without using any special keyword. The function simply looks up the variable in the global scope if it cannot find it locally.

#### Example 5
This example shows how to use the global keyword to explicitly declare that an assignment inside a function should modify a global variable. This prevents Python from creating a new local variable.

#### Example 6
This one shows if you using global keyword, it will only change the variable in top level. The first 2 output is calling the local variable so the output is 10. Final output is for the global variable so is 20.

#### Example 7
This demonstrates the intended use of global within a nested function. Because _a_global is defined at the top level, the inner function successfully modifies the original global variable, and the change is visible everywhere.

### Basic IO
This include `basic_io1.py` `basic_io2.py` and `basic_io3.py`.

#### Basic_io1.py

This file will open test.txt using read only mode. First for loop output every line and second for loop skip the blank line, only output line with content.

#### Basic_io2.py
This file store number from 0 to 99 to variable list_to_save. Open (or create) testout.txt in write mode. Print every number in a new line.

#### Basic_io3.py
This code uses Python's pickle module to save a dictionary object into a binary file. Using `rb` and `wb` to read and write file in binary format. So it store a dictionary into text file and read it out to a variable. Then print the variable.

### basic_csv.py
This script first reads a CSV file using csv package, printing each row's contents to the console as it processes them. It then re-reads the same file to extract only the first and fifth columns. Finally, it writes this extracted two-column data into a new CSV file called bodymass.csv

### using_name.py
This file shows how the `__name__` varibale is used to show if this program is running or import by other program. If this module run by itself `__name__` should be `__main__`. Or it should be file name without py extension.

### sysargv.py
This file using sys package, output number of arguments user pass through. Name of script and print all the arguments.

### control_flow.py
This Python script defines several functions to demonstrate control flow statements for basic number theory tasks.  functions to check if a number is even or odd, find its largest divisor from the set {2, 3, 4, 5}, and test for prime number using loops. 

## Practicals 1

### Loops and List Comprehensions

- `lc1.py`
This one use comprehension and for loop to create 3 lists from list of tuples called birds. 

- `lc2.py`
This one also use comprehension with if statement and for loop to create lists. Therefore, it can select the element base on certain condition.

- `dictionary.py`
This code builds a dictionary by looping through each unique order name to use as a key. Using set to remove duplicates. Get the set of orders and for each unique order, it creates a set containing all the animals that belong to that group. 

- `tuple.py`
This script loops through a collection of data for several birds. For each bird, it pulls out its specific Latin name, common name, and mass. Finally, it prints these details.

### Writing a Program with Control flows

Comparing to `control_flow.py`,  this code utilizes the doctest module to run automated tests. These tests are embedded directly within the function's docstring. When `doctest.testmod()` is called in or out of the file. It identifies these test cases by the `>>>` prompt. It compares this captured output to the expected output you provided on the very next line.

## Practicals 2

### Align DNA sequences

Calculate the alignment score between two sequences starting at a given position.
Firstly read a csv file using csv package, get seq1 and seq2 from the file.
Then define a function called `calculate_score`. This function compares two sequences, `s1` and `s2`, starting from the specified `startpoint` in `s1`. It calculates a score based on the number of matching bases and generates a string representation of the alignment.
The main loop iterates through each possible starting position along s1. It checks if the current score (z) is greater than the best score found so far (my_best_score). If so, it updates both the score and the my_best_align variable, which is recreated by prepending dots (.) as a positional offset to the shorter sequence, s2.
Then it will save the output to a file named `best_alignment.txt` in results folder.

### Missing oaks problem
The problem with "oaks" originates from the lookup in is_an_oak(name); "quercs" is misspelled and should be "quercus". The script reads species data from a CSV file. It then writes the rows identified as oaks to a new file.

Using `python3 -m doctest -v oaks_debugme.py` to test if is_an_oak(name) works. I use set intersection to compare characters between the target 'quercus' and the input genus, checking if they share at least 5 common characters. And also validate genus length falls within a reasonable range of 4-8 characters.

## Numpy
Using conda doing package management. Activate conda base environment `source ~/miniconda3/bin/activate` after create week2 environment `conda create --name boot_w2 python=3.11` then `conda activate boot_w2` 

## Fix bug

For basic input output, just change the directory sandbox into data. Then add if condition to debug me.