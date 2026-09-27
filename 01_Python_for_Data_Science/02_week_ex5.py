"""
Exercise 5
Assumption: The int variables a, b and c are already declared and initialized.
Define a conditional expression ”EXPR” such that the body of the expression if EXPR:
print("Condition fulfilled.")
is only carried out if the following statement is true:
a is greater than b | a is less than half of b | the sum of a and c is greater than b
where ’|’ is used as the ’or’ operator.
Check your result with:
a = 1, b = 2, c = 2 → True
a = 1, b = 2, c = 1 → False
"""

a = int(input("Enter a:\t"))
b = int(input("Enter b:\t"))
c = int(input("Enter c:\t"))

EXPR = a > b or a < b/2 or a + c > b
if EXPR:
    print("Condition fulfilled.")
else:
    print("Condition NOT fulfilled.")
