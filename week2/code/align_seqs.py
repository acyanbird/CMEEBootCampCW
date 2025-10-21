# Two example sequences to match
# seq2 = "ATCGCCGGATTACGGG"
# seq1 = "CAATTCGGAT"
import csv

# Assign the longer sequence s1, and the shorter to s2
# l1 is length of the longest, l2 that of the shortest

"""
Read two sequences from a CSV file and align them to find the best match.
It will output the best alignment and its score.
"""

with open('../data/align_DNA_input.csv', 'r') as file:
    csv_reader = csv.reader(file)
    row = next(csv_reader)  # read the first row
    seq1 = row[0]  
    seq2 = row[1]  

l1 = len(seq1)
l2 = len(seq2)
if l1 >= l2:
    s1 = seq1
    s2 = seq2
else:
    s1 = seq2
    s2 = seq1
    l1, l2 = l2, l1 # swap the two lengths

# A function that computes a score by returning the number of matches starting
# from arbitrary startpoint (chosen by user)
def calculate_score(s1, s2, l1, l2, startpoint):
    matched = "" # to hold string displaying alignements
    score = 0   # to hold the score
    
    # compare the two sequences by go through the second sequence
    for i in range(l2):
        if (i + startpoint) < l1:
            # Only want to compare characters within the range of s1
            if s1[i + startpoint] == s2[i]: # if the bases match
                matched = matched + "*"
                score = score + 1
            else:
                matched = matched + "-"

    # some formatted output
    #The alignment string uses '*' to indicate matches and '-' for mismatches.
    print("." * startpoint + matched)           
    print("." * startpoint + s2)
    print(s1)
    print(score) 
    print(" ")

    return score, matched

# Test the function with some example starting points:
# calculate_score(s1, s2, l1, l2, 0)
# calculate_score(s1, s2, l1, l2, 1)
# calculate_score(s1, s2, l1, l2, 5)

# now try to find the best match (highest score) for the two sequences
my_best_align = None
my_best_score = -1

for i in range(l1): # Note that you just take the last alignment with the highest score
    z, alignment_display = calculate_score(s1, s2, l1, l2, i)
    if z > my_best_score:
        my_best_align = "." * i + s2 # Update best alignment with shifted dots
        best_alignment_display = alignment_display
        my_best_score = z

# write result to file
with open('../results/best_alignment.txt', 'w') as output_file:
    output_file.write(best_alignment_display + '\n')
    output_file.write(my_best_align + '\n')
    output_file.write(s1 + '\n')
    output_file.write("Best score: " + str(my_best_score) + '\n')
