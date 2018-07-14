#challenge 3: build a loan calculator
#first I declare and iniciate all the variables envolved
monthlyPayment = 0
loanAmount = 0
interestRate = 0
numberOfPayments = 0
loanDurationInYears = 0

#Ask the user the values needed to calculate the monthly payment
#using str to declare strings (not numbers)
strloanAmount = input("How much money do you want to borrow?\n")
strinterestRate = input("What is the interest rate on the loan?\n")
strloanDurationInYears = input("How many years will it take to you pay off the loan?\n")

#convert the strings in to floating numbers, so we can use them in the formula
loanAmount = float(strloanAmount)
interestRate = float(strinterestRate)
loanDurationInYears = float(strloanDurationInYears)

#since the payment will be once per month, the number of payments will be
#the number of years * the number of months in one year
numberOfPayments = loanDurationInYears * 12

#then, calculate the monthly payment by the formula
monthlyPayment = (loanAmount * interestRate * (1 + interestRate) * numberOfPayments) \
    / ((1 + interestRate) * numberOfPayments - 1)

#print the monthly payment to the user
#use the {0:f} .format for insert the calculated number correctly in the string
print("\nThe monthly payment will be: {0:.2f}" .format(monthlyPayment))