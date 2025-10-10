"""
These code snippets demonstrate two fundamental types of loops in Python: the for loop and the while loop.
"""

# FOR loops
# Iterate over a range of numbers
for i in range(5):
    print(i)

# Iterate over a list
my_list = [0, 2, "geronimo!", 3.0, True, False]
for k in my_list:
    print(k)

# Summing elements in a list
total = 0
summands = [0, 1, 11, 111, 1111]
for s in summands:
    total = total + s
    print(total)

# WHILE loop
z = 0
# Increment z until it reaches 100
while z < 100:
    z = z + 1
    print(z)