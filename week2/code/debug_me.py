
"""
Debug sample code to identify and fix errors.
"""

def buggyfunc(x):
    y = x
    for i in range(x):
        y = y-1
        z = x/y
    return z

buggyfunc(20)