# !/usr/bin/env python3
# Filename: using_name.py
"""
This file shows how the `__name__` varibale is used to show if this program is running or import by other program. If this module run by itself `__name__` should be `__main__`. Or it should be file name without py extension.
"""

if __name__ == '__main__':
    print('This program is being run by itself!')
else:
    print('I am being imported from another script/program/module!')

print("This module's name is: " + __name__)