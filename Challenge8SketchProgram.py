#Challenge 8: Create a sketch program that allows the user to enter a pen color,
#a line length and an angle. The program will run until the user enter a length equals to 0.

import turtle
#First we initialize the variables
lengthOfLine = 0
angle = 0
penColor = "black"

#Now we ask the user to input the variables
lengthOfLine = int(input("Please enter the length of the line (type 0 for stop drawing): "))
angle = int(input("Please enter the angle (0-360): "))
penColor = input("Please enter the color of the line(blue, green, red, pink): ")

#the loop will run until the user give a length equals to 0.
while lengthOfLine != 0 :
    turtle.shape("turtle")
    turtle.color(penColor)
    turtle.forward(lengthOfLine)
    turtle.right(angle)

    #we can't forget to ask again the length of the line to user, otherwise the value will never change
    lengthOfLine = int(input("Please enter the length of the line (type 0 for stop drawing): "))

    #then we include another loop to ensure that the user will can change the other variables
    #this will previne a forever loop to.
    if lengthOfLine != 0 :
        angle = int(input("Please enter the angle (0-360): "))
        penColor = input("Please enter the color of the line(blue, green, red, pink): ")

print("You are a brilliant artist!")
turtle.exitonclick()