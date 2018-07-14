#Challenge 7 : drawing regular geometric shapes with turtle
#import the turtle list of commands
import turtle
#ask the user the number of sides of the geometric shape
numberOfSides = int(input("Please enter the number of sides of the geometric shape: "))
#ask the user the line size
numberOfPixels = int(input("Please enter the lenght of line (integer number, multiple of 2, max. 100):\n"))
#ask the user the color of the pen
colorOfPen = input("Please enter the color of lines: ").lower()
#ask the user the width of the pen
widthOfPen = input("Please enter the width of the line (integer number, max.10):\n")
#set the shape of the pen for a turtle :)
turtle.shape("turtle")
turtle.width(widthOfPen)
#create the nested loop
turtle.speed()
for steps in range(numberOfSides) :
    turtle.color(colorOfPen)
    turtle.forward(numberOfPixels)
    turtle.right(360/numberOfSides)
    for steps in range(numberOfSides) :
        turtle.color(colorOfPen)
        turtle.forward(numberOfPixels/2)
        turtle.right(360/numberOfSides)
#put the command for exit on click allows the user to exit turtle window.
turtle.exitonclick()