#############################
# FILE OUTPUT
#############################
# Save the elements of a list to a file

"""
Save the numbers from 0 to 99 to a text file, each on a new line
"""

list_to_save = range(100)

f = open('../data/testout.txt','w')
for i in list_to_save:
    f.write(str(i) + '\n') ## Add a new line at the end

f.close()