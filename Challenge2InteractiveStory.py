#Challenge 2, write a program that allows the user to personalize a story.
#first, I introduce the variables of the story.
#using \n for formatting, the input data will appear in the next line.

userName = input("What's your first name?\n")
petName = input("What's the name of your pet?\n")
animal = input("What's your animal kind?\n")
place = input("Name your favorite place to go for a walk with your pet:\n")

#using the print command for display the story. 
#\n is used for formatting, the story will began in the next line.
#using the .capitalize and .lower to display the content as I want it, independent of the format of the input data by the user.

print("\n"+userName.capitalize()+" took his "+animal.lower()+" to walk on the "+place.lower()+ ".")
print("The name of the "+animal.lower()+" is "+petName.capitalize()+".")