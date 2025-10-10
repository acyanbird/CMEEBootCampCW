
"""
This code builds a dictionary by looping through each unique order name to use as a key. Using set to remove duplicates. Get the set of orders and for each unique order, it creates a set containing all the animals that belong to that group.
"""

taxa = [ ('Myotis lucifugus','Chiroptera'),
         ('Gerbillus henleyi','Rodentia',),
         ('Peromyscus crinitus', 'Rodentia'),
         ('Mus domesticus', 'Rodentia'),
         ('Cleithrionomys rutilus', 'Rodentia'),
         ('Microgale dobsoni', 'Afrosoricida'),
         ('Microgale talazaci', 'Afrosoricida'),
         ('Lyacon pictus', 'Carnivora'),
         ('Arctocephalus gazella', 'Carnivora'),
         ('Canis lupus', 'Carnivora'),
        ]

# Write a python script to populate a dictionary called taxa_dic derived from
# taxa so that it maps order names to sets of taxa and prints it to screen.
# 
# An example output is:
#  
# 'Chiroptera' : set(['Myotis lucifugus']) ... etc. 
# OR, 
# 'Chiroptera': {'Myotis  lucifugus'} ... etc

#### Your solution here #### 

taxa_dic = {}   # create empty dictionary

for species, order in taxa:   # traverse the list
    taxa_dic.setdefault(order, set()).add(species)  #  If order not in dictionary, add it with empty set, then add species to the set
    # If order already in dictionary, just add species to the set

print(taxa_dic)  # print the dictionary

# Now write a list comprehension that does the same (including the printing after the dictionary has been created)  
 
#### Your solution here #### 

orders = set(order for _, order in taxa)  # get unique orders, get order and species from taxa, then using set() to get unique orders

# Create dictionary using dictionary comprehension
# For o in orders is the main loop in comprehension, get every order.
# Make the order as key of dictionary, get species when its order match o 
# Create a set of species matching order

taxa_dic_comp = { o : { species for species, order in taxa if order == o } for o in orders }

print(taxa_dic_comp)  # print the dictionary created by comprehension