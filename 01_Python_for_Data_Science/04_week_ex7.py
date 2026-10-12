"""
Exercise 7
Keyword arguments:
We want to calculate the circumference of a rectangle with width = 2. Given the definitions below, what is the
problem when we call: \circumference(2)?
Task 1: Change the call such that \circumference(XXX) is caculating the circumference with width = 2.
Task 2: Calculate the circumference for a rectangle with length = 5 and width = 3 with 2 different function calls.
def circumference(length = 2, width = 1):
return 2 * (length + width)
c1 = circumference(2) # 2 should be the width !!!
print(c1)
# or with length 5 and width 3:
c2 = circumference(......)
print(c2)
# how can the function be called alternatively, for the same result?
c3 = circumference(.......)
print(c3)
"""

def circumference(length = 2, width = 1):
    return 2 * (length + width)

c1 = circumference(2) # 2 should be the width !!!
print(c1)

# or with length 5 and width 3:
c2 = circumference(5, 3)
print(c2)

# how can the function be called alternatively, for the same result?
c3 = circumference(width=3, length=5)
print(c3)