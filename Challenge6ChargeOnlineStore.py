#Challenge 6: Calculate the total to charge for an order from an online store in Canada
#and display to user the final amount with tax

#first, we initiallize all the str variables, like the contry, province
rightCountry = " "
province = " "

#then, we initialize all the float variables, like each tax, the order value and the total value with tax
orderValue = 0.00
totalOrderWithTaxes = 0.00
generalSalesTax = 1.005
harmonizedSalesTax = 1.013
provincialSalesTax = 1.006

#explain to user how this program works
print("Hello! This program allows you to calculate the tax charged \
\nif your order is from Canada. If your order is from outside Canada, \
\nyou only need to inform your country and your order value.\
\nFollow the steps:")

#ask user the country
rightCountry = input("\nPlease enter the country from which you are ordering: ").lower()

#ask user the order value
orderValue = float(input("Please enter the order value (only numbers, \nwith cents of dollar if necessary): "))
if rightCountry == "canada" :
    #ask user the province
    #then apply the appropriate tax according the province
    province = input("Please enter the province from wich you are ordering: ").lower()
    if rightCountry == "canada" and province == "alberta" :
    #the province of Alberta has only the general sales tax, of 5%
        #calculate and display to the user the total order
        totalOrderWithTaxes = (orderValue * generalSalesTax)
        print("The total value of your order with taxes is ${0:.2f}." .format(totalOrderWithTaxes))
    elif rightCountry == "canada" and (province == "ontario" or province == "new brunswick" or province == "nova scotia") :
    #the provinces of Ontario, New Brunswick and Nova Scotia has only the harmonized sales tax, of 13%
         #calculate and display to the user the total order 
         totalOrderWithTaxes = (orderValue * harmonizedSalesTax)
         print("The total value of your order with taxes is ${0:.2f}." .format(totalOrderWithTaxes))
    elif rightCountry == "canada" and (province == "british columbia" or province == "newfoundland and labrador" \
        or province == "prince edward island" or province == "quebec" or province == "saskatchewan" \
        or province == "manitoba") :
        #the other provinces has the general sales tax and the provincial sales tax, total tax of 11%
          #since the other provinces tax is 11% (provincial sales tax + general sales tax)
          #calculate the total tax value
          totalSalesTax = (provincialSalesTax + generalSalesTax) - 1
          #calculate and display to the user the total order
          totalOrderWithTaxes = orderValue * totalSalesTax
          print("The total value of your order with taxes is ${0:.2f}." .format(totalOrderWithTaxes))
    else :
     #if the user give the right country, but no province or wrong typing, displays a error message
          print("Wrong informations given. Please try again.")
else:
    totalOrderWithTaxes = orderValue
    print("No tax charged. \nThe total value of your order is ${0:.2f}." .format(totalOrderWithTaxes))
#display a nice good bye messge
print("Have a nice day!")