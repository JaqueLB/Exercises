# Challenge 5: Calculate shipping charges with if statement (using the boolean variable)

# first, we ask for the total amount of the purchase
valueOfPurchase = float(input("What is the value of your purchase?(Numbers only, with cents of dollar if necessary) "))

# initialize our boolean variable
shippingCharge = False

# use if statement to calculate the final total, with the shipping charge
# display to user the results with the $ symbol
print("Let's calculate your shipping charge...")
if valueOfPurchase < 50.00 :
    shippingCharge = True
if shippingCharge :
    shippingCharge = 10.00
    totalPurchase = valueOfPurchase + shippingCharge
    print("\nThe value of the shipping charge is ${0:.2f}." .format(shippingCharge)+\
        "\nThe final total of your purchase is ${0:.2f}." .format(totalPurchase))
else:
    shippingCharge = 0.00
    totalPurchase = valueOfPurchase + shippingCharge
    print("\nThe value of the shipping charge is ${0:.2f}." .format(shippingCharge)+\
        "\nThe final total of your purchase is ${0:.2f}." .format(totalPurchase))
print("Thanks for buying, have a nice day!")

## Challenge 5: Calculate shipping charges with if statement

## first, we ask for the total amount of the purchase
#valueOfPurchase = float(input("What is the value of your purchase? "))

## them, we declare the shipping charge, and calculate the total amount

#if valueOfPurchase < 50 :
#    shippingCharge = 10.00
#    totalPurchase = valueOfPurchase + shippingCharge
#    print("\nThe value of the shipping charge is ${0:.2f}." .format(shippingCharge)+\
#        "\nThe final total of your purchase is ${0:.2f}." .format(totalPurchase))
#else:
#    shippingCharge = 0.00
#    totalPurchase = valueOfPurchase + shippingCharge
#    print("\nThe value of the shipping charge is ${0:.2f}." .format(shippingCharge)+\
#        "\nThe final total of your purchase is ${0:.2f}." .format(totalPurchase))
#print("Thanks for buying, have a nice day!")