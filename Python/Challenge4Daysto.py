#Challenge 4, print to user the amount of days to end the project
#extra, display the number of weeks and days left.

#use the 'import' function to know the actual date and time
import datetime

#declare only the date of today
todaysDate = datetime.date.today()

#display the date in a formatted way like (dd/mm/yyyy)
#print(todaysDate.strftime("%d/%m/%Y"))

#asks to user the deadline of his project, with the answer in another line (\n)
strdeadlineDate = input("What is the deadline date of your project (yy/mm/yyyy)?\n")

#declare the end date of the project, with base in the input data
endDate = datetime.datetime.strptime(strdeadlineDate, "%d/%m/%Y").date()

#calculate the number of days until the deadline
daysToComplete = endDate - todaysDate

##print to user only the number of total days, whithout hours (using .days)
print("You have {0:d} ".format(daysToComplete.days)+"days until your deadline.")

#extra: for display the weeks and the days until the deadline, first we initialize the variables
numberOfWeeks = 0
numberOfDays = 0

#since one week has 7 days, we calculate the number of weeks from the total number of days
numberOfWeeks = daysToComplete.days / 7

#the module of the total number of days / by 7 days a week
#will tell us the number of days left
numberOfDays = daysToComplete.days%7

#display the results for the user
print("You have {0:.0f} " .format(numberOfWeeks)+"weeks and {0:d} " .format(numberOfDays)+"days until your deadline.")