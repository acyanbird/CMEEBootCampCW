## This week we include [Biological Computing in Python](https://mulquabio.github.io/MQB/notebooks/Python.html)
Introduce basic operation of python, and how to debug, using R within Python.

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
This code uses Python's pickle module to save a dictionary object into a binary file. Using `rb` and `wb` 