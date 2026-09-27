"""
Exercise 1
Write a program that asks for a number between 1 and 7. The number serves as a substitute for a day:
1 = Monday, 2 = Tuesday, ........, 7 = Sunday
As a result, print a message depending on the input:
• ”You have to work ...!” (for Monday to Friday)
• ”Enjoy your weekend...!” (for Saturday and Sunday)
• ”Wrong input...!” (for wrong number)
"""

input = int(input("Enter number between 1 to 7: \n"))
if 1 <= input <= 5:
    print("You have to work ...!")
elif 6 <= input <= 7:
    print("Enjoy your weekend...!")
else: 
    print("Wrong input...!")
    