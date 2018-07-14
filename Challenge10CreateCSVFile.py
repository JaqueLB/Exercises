##Challenge 10 - Create a CSV file
#fileName = "GuestAge.csv"
#create a flag for write mode access
WRITE = "w"
#create and open the file on the writing mode
#myCSVfile = open(fileName, WRITE)
#enter the data
#myCSVfile.write("Doyle McCarty, 27\n")
#myCSVfile.write("Jodi Mills, 25\n")
#myCSVfile.write("Nicholas Rose, 32\n")
#myCSVfile.write("Kian Goddard, 36\n")
#myCSVfile.write("Zuha Hanania, 26\n")
#close the file
#myCSVfile.close()
#print("File write successfully!")

#Extra credit (my version, too long but works as long as the user wants it)
#aks to the user the names and ages and put data in two lists
#guestName = " "
#guestAge = " "
#listName = []
#listAges = []
#while guestName != "DONE" :
#    guestName = input("Who would you like to invite to your party? (type DONE when you finish) ")
#    listName.append(guestName.title()) #.title() capitalize all first letters, from each word
#listName.remove("Done") #Remove the Done word, in the way that it is formated
#print("Guests list entered successfully!")
#while guestAge != "DONE" :
#    guestAge = input("Please, enter the guests ages (type DONE when you finish): ")
#    listAges.append(guestAge)
#listAges.remove("DONE")
#print("Ages list entered successfully!")
##create a file CSV
#fileName2 = "PartyGuests.csv"
#partyGuestsFile = open(fileName2, WRITE)
##import lists to file, format to appear the name, comma, the age and in the next line, repeat.
#for index in range(len(listName)): #the len() helps to display the first name, them run the code inside the loop
#    partyGuestsFile.write(str(listName[index]) + "," + str(listAges[index]) + "\n")
#partyGuestsFile.close()
#print("File created successfully!")

##extra credit - short version 1 (works if you want only 5 guests :))
#fileName3 = "Party.csv"
##open the file in the write mode
#partyFile = open(fileName3,WRITE)
##write the names of the guests and their ages on the file, ask to user
#for index in range(5) :
#    name = input("Enter the guest name: ")
#    age = input("Enter the guest age: ")
#    partyFile.write(name + "," + age + "\n")

##close the file
#partyFile.close()

#extra credit - short version 2
fileName4 = "Party2.csv"
#open the file in the write mode
partyFile = open(fileName4,WRITE)

#write the names of the guests and their ages on the file, ask to user
name = " "
age = " "
nbrGuests = int(input("How many guests do you want to invite?(type only in numeric format) "))
for steps in range(nbrGuests) :
    name = input("Enter the guest name: ")
    age = input("Enter the guest age: ")
    partyFile.write(name.title() + "," + age + "\n")

#close the file
partyFile.close()
print("File created successfully!")