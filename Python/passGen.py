import random

men = 0
lowLet = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n",
          "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
capLet = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N",
          "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
num = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10"]
symbol = ["!", "@", "#", "$", "%", "&", "*", "<", ">", "?"]
lowState = 1
capState = 1
numState = 1
symbolState = 1

#Function prints the options
def menu():

    print ("Password Generator v1.0.0\n")
    print ("1) Generate a password")
    print ("2) Edit settings")
    print ("3) Exit\n")

#Checks the state
def check(state):
    if state == 1:
        return "True"
    else:
        return "False"

#Changes the state
def change(state):
    if state == 1:
        return 0
    else:
        return 1

#Function that edits the onclusion of certain characters in password"
def edit():

    lowPrint = check(lowState)
    capPrint = check(capState)
    numPrint = check(numState)
    symbolPrint = check(symbolState)
        
    print ("\nSettings...\n")
    print ("Lower Case: " + lowPrint)
    print ("Upper Case: " + capPrint)
    print ("Numbers: " + numPrint)
    print ("Symbols: " + symbolPrint)
    print ("\n1) Edit settings")
    print ("2) Return to main menu\n")

#Function that generates the password
def gen(n):

    typeList = typeGen(lowState, capState, numState, symbolState)
    p = len(typeList)
    
    if p == 0:
            return "\nCannot generate password because no characters are allowed. To change this, go\nto settings.\n"

    else:
   
        if n < 5 or n > 30:

            return "\nInvalid length!\n"
        
        else:

            password = ""

            while n > 0:

                q = random.randint(0, p - 1)

                if typeList[q] == "low":
                    
                    r = random.randint(0, 25)
                    password = password + lowLet[r]
                    n = n - 1

                elif typeList[q] == "cap":

                    r = random.randint(0, 25)
                    password = password + capLet[r]
                    n = n - 1
                    
                elif typeList[q] == "num":

                    r = random.randint(0, 10)
                    password = password + num[r]
                    n = n - 1

                else:

                    r = random.randint(0, 9)
                    password = password + symbol[r]
                    n = n - 1
                    

            return password
                    
#Inserts desired conditions into the requested list
def typeGen(one, two, three, four):
    
    List = []

    if one == 1:
        one = "low"
        List.append(one)
    else:
        pass

    if two == 1:
        two = "cap"
        List.append(two)
    else:
        pass
    
    if three == 1:
        three = "num"
        List.append(three)
    else:
        pass
    
    if four == 1:
        four = "symbol"
        List.append(four)
    else:
        pass

    return List
#Menu
while men < 1:

    menu()
    choice = input("> ")
    
    if choice == "1" or choice == "Generate a password":

        create = 1

        print ("\nEnter the length of the password (5 - 30 characters)\n")

        n = input("> ")

        while create > 0:

            try:
                a = int(n)
            except:
                print ("Cannot interpret input. Returning to main menu.")
                create = 0

            print (gen(a))
            print ("")

            create = 0
        
    elif choice == "2" or choice == "Edit settings":
        ed = 0

        while ed < 1:

            edit()
            choiceEd = input("> ")

            if choiceEd == "1" or choiceEd == "Edit settings":
                
                print ("\nType in the name of the setting you wish to turn on or off.\n")

                choiceSwitch = input("> ")

                if choiceSwitch == "Lower Case":
                    lowState = change(lowState)

                elif choiceSwitch == "Upper Case":
                    capState = change(capState)

                elif choiceSwitch == "Numbers":
                    numState = change(numState)

                elif choiceSwitch == "Symbols":
                    symbolState = change(symbolState)

                else:
                    print ("Cannot understand input. Please try again.\n")
                
            elif choiceEd == "2" or choiceEd == "Return to main menu":
                ed = 1
            else:
                print ("Cannot understand input. Please try again.")
        
    elif choice == "3" or choice == "Exit":
        men = 1
        
    else:
        print ("Cannot understand input. Please try again.")
    
