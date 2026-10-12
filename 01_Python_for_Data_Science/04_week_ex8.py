"""
Exercise 8
Default values for functions:
Functions may have parameters with default values.
Task: Change the two examples below, such that all the function calls hello(...) and circumference(...) run
without any error.
# Change definitions...
def hello (name):
print ("Hello" + name + "!")
def circumference (length, width):
return 2 * (length + width)
# ...such that this part nees to run without errors:
hello("Peter")
hello()
c1 = circumference(5, 3)
print(c1)
c2 = circumference(5)
print(c2)
c3 = circumference()
print(c3)
"""

# Change definitions...
def hello (name):
    print ("Hello" + name + "!")

def circumference (length, width):
    return 2 * (length + width)

# ...such that this part nees to run without errors:
hello(" Peter")
hello(" Weronika")
c1 = circumference(5, 3)
print(c1)
c2 = circumference(5, 3)
print(c2)
c3 = circumference(5, 3)
print(c3)