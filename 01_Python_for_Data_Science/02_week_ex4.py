"""
Exercise 4
Write a program that asks for three whole numbers (potentially negative!) and displays them in ascending order.
Use nested if-statements for order determination (i.e. no built-in- ’sort’ function
"""
numb_list = list()
iter = 1
while iter < 4:
    numb = int(input(f"Enter {iter}. number: \t"))
    numb_list.append(numb)
    iter += 1


first = None
second = None
third = None

for elem in numb_list:
    if first is None:
        first = elem
    elif first is not None and second is None:
        if elem < first:
            second = first
            first = elem
        else:
            second = elem
    elif first is not None and second is not None and third is None:
        if elem < first:
            third = second
            second = first
            first = elem
        elif first < elem < second:
            third = second
            second = elem
        else:
            third = elem

print(f"Ordered numbers: {first}  {second}  {third}")
