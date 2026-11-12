"""
Exercise 2
Write a python program that asks for a string as input and calculates the number of digits and letters contained.
Example:
Input = ”python 3.2”
Expected result:
Letters: 6
Digits: 2
HINT: Check out the documentation for string.isdigit() and string.isalpha().
Comment: Provide the solution method as part of a class.
"""

class CharRecognition:

    def __init__(self, text):
        self.text = text
        self.digits_count = 0
        self.letters_count = 0

    def __str__(self): #, letters_count: int, digits_count: int):
        self.char_count()
        print()
        if self.digits_count != 0 and self.letters_count != 0:
            print(f"Letters: {self.letters_count}\nDigits: {self.digits_count}")
        else:
            print("Provided text has not characters")

    def char_count(self):
        for char in self.text:
            if char.isdigit():
                self.digits_count += 1
            elif char.isalpha():
                self.letters_count += 1
            else:
                print(f"The {char=} is neither a letter nor a digit.")


my_input = input("Enter the text to recognise number of digits and letter:\t")

CharRecognition(my_input).__str__()
            
            
    