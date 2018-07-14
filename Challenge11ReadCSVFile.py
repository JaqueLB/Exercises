#Challenge 11 - Read a CSV file
fileName = "GuestAge.csv"
#create a flag for write mode access
WRITE = "w"
#create and open the file on the writing mode
myCSVfile = open(fileName, WRITE)
#enter the data
myCSVfile.write("Doyle McCarty, 27\n")
myCSVfile.write("Jodi Mills, 25\n")
myCSVfile.write("Nicholas Rose, 32\n")
myCSVfile.write("Kian Goddard, 36\n")
myCSVfile.write("Zuha Hanania, 26\n")
#close the file
myCSVfile.close()
print("File write successfully!")
#import the csv library
import csv

#enter the data from the wanted file
fileName = "GuestAge.csv"
READ = "r"

with open(fileName,READ) as GuestAge :
    #read the file contents
    dataFromFile = csv.reader(GuestAge)
    #loop for display once per row
    for row in dataFromFile :
        #display data as I want it
        print(", ".join(row))