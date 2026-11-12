"""
Exercise 1
Part a):
For each animal in the file (rows), print:
"Hi, I'm a {animal_type} and my name is {name}!"

Solve the exercise by writing a class ’Animal’ and adding a method allowing to print the requested string. Note
that for this task it is not necessary to differentiate between animal types!
"""

class Animal:

    def __init__(self, animal_type, name, age, weight, legs):
        self.animal_type = animal_type 
        self.name = name
        self.age = age
        self.weight = weight
        self.legs= legs

    def __str__(self):
        print(f"Hi, I'm a {self.animal_type} and my name is {self.name}!")


"""
Part b):
Now we are interested in the various sounds the animal types make. Write a separate class for each animal type.
Provide a method ”speak”, which depending on the animal type prints different sounds.
"""


class Dog(Animal):

    def __init__(self, animal_type, name, age, weight, legs):
        super().__init__(animal_type, name, age, weight, legs)

    def speak(self):
        print("Woof-woof")


class Cat(Animal):

    def __init__(self, animal_type, name, age, weight, legs):
        super().__init__(animal_type, name, age, weight, legs)

    def speak(self):
        print("Meow meow")


class Snake(Animal):

    def __init__(self, animal_type, name, age, weight, legs):
        super().__init__(animal_type, name, age, weight, legs)

    def speak(self):
        print("SsssSSsss")



# settings
file_path = ".\\01_Python_for_Data_Science\\animals.csv"


# read file and create the list
with open(file_path, "r") as file:
    for line in file:
        animal = line[:-2].replace(" ", "").split(",")
        if animal[0] != "animal_type":
            Animal(*animal).__str__()
            if animal[0].lower() == "Dog".lower():
                Dog(*animal).speak()
            elif animal[0].lower() == "Cat".lower():
                Cat(*animal).speak()
            elif animal[0].lower() == "Snake".lower():
                Snake(*animal).speak()
            else:
                print("WRONG ANIMAL")
            print()
                


