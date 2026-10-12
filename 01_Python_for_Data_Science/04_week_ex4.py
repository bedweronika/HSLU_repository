"""
Exercise 4
Write a function that accepts a list of integers as input and returns a list containing all even numbers of the input
list.
"""

def transfor_integer_list(int_list: list[int]) -> list[int]:
    return [n for n in int_list if n%2==0]

my_list = [1, 2, 3, 4, 5, 6, 7 ,8 ,9, 10]
print(transfor_integer_list(my_list))