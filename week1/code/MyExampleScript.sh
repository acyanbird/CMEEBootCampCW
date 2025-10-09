#!/bin/sh

# Using 2 ways to print Hello <username>
MSG1="Hello"
MSG2=$USER
echo "$MSG1 $MSG2"
echo "Hello $USER"
echo