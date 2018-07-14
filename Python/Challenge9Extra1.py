#Extra Credit 1 - Challenge 9 : remove all data from a list with a loop
listOfAge = []
ages = " "
while ages != "DONE" :
    ages = input("Please enter the ages of the guests (enter DONE when you finish): ")
    listOfAge.append(ages)
listOfAge.remove("DONE")
print("Data entered succesfully!")
for steps in listOfAge :
    print(steps)
#clean all list by the position of data. Works with you set the 0 poition(first data entered) or the -1 position (last data entered).
while listOfAge != [] :
    del listOfAge[0]
print(listOfAge)

#Extra credit 2 - clean all duplicates widhout care about order
print(listOfAge)
list(set(listOfAge))
print(list(set(listOfAge)))
