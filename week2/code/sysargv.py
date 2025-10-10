# !/usr/bin/env python3

"""
This file using sys package, output number of arguments user pass through. Name of script and print all the arguments.
"""

import sys
print("This is the name of the script: ", sys.argv[0])
print("Number of arguments: ", len(sys.argv))
print("The arguments are: " , str(sys.argv))