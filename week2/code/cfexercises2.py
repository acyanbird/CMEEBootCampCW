
########################
def hello_1(x):
    # Print 'hello' for each multiple of 3
    for j in range(x):
        if j % 3 == 0:
            print('hello')
    print(' ')

hello_1(12)

########################
def hello_2(x):
    # Print 'hello' for each multiple of 4 or 5
    for j in range(x):
        if j % 5 == 3:
            print('hello')
        elif j % 4 == 3:
            print('hello')
    print(' ')

hello_2(12)

########################
def hello_3(x, y):
    # Print 'hello' for each number between x and y
    for i in range(x, y):
        print('hello')
    print(' ')

hello_3(3, 17)

########################
def hello_4(x):
    # Print 'hello' while x is not equal to 15
    while x != 15:
        print('hello')
        x = x + 3
    print(' ')

hello_4(0)

########################
def hello_5(x):
    # Print 'hello' while x is less than 100
    # Get initial x and increment x by 1 each iteration
    while x < 100:
        if x == 31:
            # Print 'hello' 7 times if x equals 31
            for k in range(7):
                print('hello')
        elif x == 18:
            # print hello 1 time if x equals 18
            print('hello')
        x = x + 1
    print(' ')

hello_5(12)

# WHILE loop with BREAK
def hello_6(x, y):
    # Print 'hello' while x is True and break when y equals 6
    while x: # while x is True
        print("hello! " + str(y))
        y += 1 # increment y by 1 
        if y == 6:
            break
    print(' ')

hello_6 (True, 0)