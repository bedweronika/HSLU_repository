"""
Exercise 1

Produce a class structure where Dog, Cat and Snake are implemented as child classes of a base class Animal. Create
the object variables in the base class, along with a method print_basic_information(), which prints ’type’ and
’name’ to the console.
In each child class, use the base class constructor with ’super’ and add an additional method ’speak’, specific to
that child class. In each child class, add an additional method where you return the sum of the object variables
’age’ and ’legs’.
For each element in the animals.csv, create an object of the corresponding subclass, let it print basic information
(method from ’Animal’), let it speak (method from child class) and get the sum of ’age’ and ’legs’ as a return value.
"""


class Animal:

    def __init__(self, animal_type, name, age, weight, legs):
        self.animal_type = animal_type 
        self.name = name
        self.age = int(age)
        self.weight = int(weight)
        self.legs = int(legs)

    def print_basic_information(self):
        print(f"Animal type: {self.animal_type}\nAnimal name: {self.name}")

    def variable_sum(self):
        return self.age + self.legs


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
        animal = line[:-1].replace(" ", "").split(",")
        if animal[0] != "animal_type":
            Animal(*animal).print_basic_information()
            if animal[0].lower() == "Dog".lower():
                dog = Dog(*animal)
                dog.speak()
                print(dog.variable_sum())
            elif animal[0].lower() == "Cat".lower():
                cat = Cat(*animal)
                cat.speak()
                print(cat.variable_sum())
            elif animal[0].lower() == "Snake".lower():
                snake = Snake(*animal)
                snake.speak()
                print(snake.variable_sum())
            else:
                print("WRONG ANIMAL")
            print()
                