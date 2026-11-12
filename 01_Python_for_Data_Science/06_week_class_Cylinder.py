"""
For solving optimization problems, you write a class named Cylinder with the following content:

parameters:
float diameter (meter)
float height (meter)
bool empty -> this is by default true (optional parameter)
object variables:
diameter: represents objects diameter
height: represents objects height
empty: represents if the cylinder is empty
level: represents the current fill level of the cylinder in percentage 0 .. 100
methods:
 fill:
sets the variable empty to false
sets the level to 100
returns true if it was empty before; else false.
release:
reduces the level by 10
sets the variable empty to true if the level is 0 after reduction
returns false if the level was < 10 before reduction; else true
weight:
returns the weight of the content: assuming a density of 1kg/0.001m^3
Generate few cylinder objects and experiment with the functions
"""

class Cylinder:

    level = 0

    def __init__(self, diameter, height, empty=True):
        self.diameter = diameter
        self.height = height
        self.empty = empty

    def fill(self):
        was_empty = False
        if self.empty is True:
            was_empty = True
        self.empty = False
        Cylinder.level = 100
        return was_empty

    def release(self):
        if  Cylinder.level < 10:
            return False
        Cylinder.level -= 10
        if Cylinder.level == 0:
            self.empty = True
        return True

    def weight(self):
        radius = self.diameter / 2
        volume = 3.14 * radius**2 * self.height
        return volume * (self.level / 100) 


cyl1 = Cylinder(500, 30)
cyl1.fill()
print(cyl1.level)
print(cyl1.weight())