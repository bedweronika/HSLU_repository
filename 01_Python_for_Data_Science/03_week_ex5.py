"""
Write a Python program to guess a number between 1 to 10. You can use the predefined code block to create
a random number or just set it manually. Next, the user is prompted to enter a guess. If the guess is wrong, a
message ”to big” or ”to small” is printed to the console and the prompt (user input) appears again until the guess
is correct. If the guess is correct, ”Well guessed!” will be printed and the program ends.
Extension: The number of trials should be prompted as well: ”Well done - you have tried it 4 times!”
"""
upper_limit = 100
attept_counts = 0

# Code block to create a random number
from random import randint
random_number = randint(1,upper_limit)

while True:
    attept_counts += 1
    upper_limit = int(input(f"Enter the integer number in the range 1 to {upper_limit}:\t"))
    if upper_limit == random_number:
        print("\nWell guessed!", end=" ")
        break
    elif upper_limit > random_number:
        print("Too big!")
    elif upper_limit < random_number:
        print("Too small!")

print(f"Your atempts: {attept_counts}")