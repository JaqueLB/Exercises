#Challenge 9 - Create a guests list and return a list in alphabetical order

#first, we ask to the user the names of the guests until done
#then, we create a list from the informed data
nameOfGuests = " "
guestsList = []
while nameOfGuests != "DONE" :
    nameOfGuests = input("Please enter the first name of the guest (enter DONE when you finish): ")
    guestsList.append(nameOfGuests)
print("Data entered successfully!")
#remove the DONE data
guestsList.remove("DONE")
#sort the list to display alphabetically
guestsList.sort()
#create a for loop, for display all data
print("\nHere is your guests list:")
for guest in guestsList :
    print(guest.capitalize())