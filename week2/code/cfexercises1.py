#!/usr/bin/env python3

__author__ = 'Betty Liu (qql25@ic.ac.uk)'
__version__ = '0.0.1'

import sys

def foo_1(x):
    return x ** 0.5

def foo_2(x, y):
    if x > y:
        return x
    return y

def foo_3(x, y, z):
    if x > y:
        x, y = y, x
    if x > z:
        x, z = z, x
    if y > z:
        y, z = z, y
    return [x, y, z]

def foo_4(x):
    result = 1
    for i in range(1, x + 1):
        result = result * i
    return result

def foo_5(x): # a recursive function that calculates the factorial of x
    if x == 1:
        return 1
    return x * foo_5(x - 1)
     
def foo_6(x): # Calculate the factorial of x in a different way; no if statement involved
    facto = 1
    while x >= 1:
        facto = facto * x
        x = x - 1
    return facto

def main(argv):
    # Test the functions
    print(foo_1(30))
    print(foo_2(5, 7))
    print(foo_3(9, 2, 5))
    print(foo_4(25))
    print(foo_5(35))
    print(foo_6(25))

    # Get arguments from user
    print("Number of arguments:", len(sys.argv))
    # Print all arguments except the script name
    print("The arguments are:", sys.argv[1:])
    return 0

if (__name__ == "__main__"):
    status = main(sys.argv)
    sys.exit(status)