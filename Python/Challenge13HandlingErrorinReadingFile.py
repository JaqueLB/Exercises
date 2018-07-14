#Challenge 13 - Create a code for open and read a file, add error handling to provide error message if the file is missing
#extra credit: loop for ask the user until file found
#import the sys library
import sys
#Create a tag for read
READ = "r"
contentFile = " "
nameOfFile = " "
while True :
    #Ask to user the name of the file and open the file
    #since you may get an error when you attempt to open the file 
    #For example the file specified may not exist
    #put a try/except statement around the command
    try : 
        nameOfFile = input("What's the name of the file that you want to open?\n(with the extension, for example, .txt)\n")
        userFile = open(nameOfFile,READ)
        fileFound = True #using the boolean variable, display the content of the file if found it
        if fileFound :    
            contentFile = userFile.read()
            print("\n" + contentFile)
            userFile.close()
            break #break the while loop
    except FileNotFoundError :
        print("\nSorry, could not find the file " + nameOfFile +". Please, try again.\n")
        fileFound = False
        continue #if you get an error, continue to the while loop, user can try again
    #for other errors
    except :
        error = sys.exc_info()
        print(error) #inform to user the type of error
        fileFound = False
        break #break the while loop to prevent other problems.

