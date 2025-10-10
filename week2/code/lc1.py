
"""
This code demonstrates the use of tuples and list comprehensions.
"""

birds = ( ('Passerculus sandwichensis','Savannah sparrow',18.7),
          ('Delichon urbica','House martin',19),
          ('Junco phaeonotus','Yellow-eyed junco',19.5),
          ('Junco hyemalis','Dark-eyed junco',19.6),
          ('Tachycineata bicolor','Tree swallow',20.2),
         )

#(1) Write three separate list comprehensions that create three different
# lists containing the latin names, common names and mean body masses for
# each species in birds, respectively. 

# Using list comprehensions to traverse the tuples in birds
names = [bird[0] for bird in birds]
common_names = [bird[1] for bird in birds]
masses = [bird[2] for bird in birds]

print("Latin names:", names, "\nCommon names:", common_names, "\nMean body masses:", masses)

# (2) Now do the same using conventional loops (you can choose to do this 
# before 1 !). 

# A nice example out out is:
# Step #1:
# Latin names:
# ['Passerculus sandwichensis', 'Delichon urbica', 'Junco phaeonotus', 'Junco hyemalis', 'Tachycineata bicolor']
# ... etc.

conventional_names = []
conventional_common_names = []
conventional_masses = []

for bird in birds:
    conventional_names.append(bird[0])
    conventional_common_names.append(bird[1])
    conventional_masses.append(bird[2])

print("\nFor conventional way:\nLatin names:", conventional_names, "\nCommon names:", conventional_common_names, "\nMean body masses:", conventional_masses)
 