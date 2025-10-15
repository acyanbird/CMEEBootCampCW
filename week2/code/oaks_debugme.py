import csv
import sys

#Define function
#Miswrite quercus to quercs so nothing found
def is_an_oak(name):
    """ 
    Returns True if name is starts with 'quercus' 
    >>> is_an_oak('Quercus robur')
    True
    
    >>> is_an_oak('Fagus sylvatica')
    False

    >>> is_an_oak('Quercuss robur')
    True

    >>> is_an_oak('sQuercuss robur')
    True
    """

    genus = name.split()[0]
    genus_set = set(genus.lower())
    target_set = set('quercus')

    # Find the number of characters in common
    intersection_size = len(genus_set.intersection(target_set))

    if intersection_size >= 5 and 4 <= len(genus) <= 9:
        return True

    return False

def main(argv): 
    f = open('../data/TestOaksData.csv','r')
    g = open('../data/JustOaksData.csv','w')
    taxa = csv.reader(f)
    csvwrite = csv.writer(g)
    oaks = set()
    for row in taxa:
        print(row)
        print ("The genus is: ") 
        print(row[0] + '\n')
        if is_an_oak(row[0]):
            print('FOUND AN OAK!\n')
            csvwrite.writerow([row[0], row[1]])    

    return 0
    
if (__name__ == "__main__"):
    status = main(sys.argv)