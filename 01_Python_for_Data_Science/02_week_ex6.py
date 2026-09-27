"""
Exercise 6
Assumption: The int variables a, b and c are already declared and initialized.
Define a conditional expression ”EXPR” such that the body of the expression
if EXPR:
print("Condition fulfilled.")
is only carried out if the following statement is true:
a/2 is an odd number | b − c is an even number | both a and b and also b and c have different values
where ’|’ is used as the ’or’ operator.
Check your result with:
a = 6, b = 2, c = 0 → T rue
a = 5, b = 2, c = 1 → T rue
a = 5, b = 5, c = 2 → F alse
a = 4, b = 4, c = 1 → F alse
"""

a = int(input("Enter a:\t"))
b = int(input("Enter b:\t"))
c = int(input("Enter c:\t"))

EXPR = (a/2)%2 == 1 or (b - c)%2 == 0 or (a != b and b != c)
if EXPR:
    print("Condition fulfilled.")
else:
    print("Condition NOT fulfilled.")
