
"""
Debug sample code to identify and fix errors.
"""

def buggyfunc(x):
    y = x
    for i in range(x):
        y = y-1
        if y == 1:
            break
    z = x/y
    return z

print(buggyfunc(20))