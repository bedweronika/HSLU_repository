"""
Exercise 5
Write a function accepts a list as input and returns the unique values contained in that list as a list.
Hint: you can use the ”set” method to check your solution, but not within your function.
print(set([1,1,2]))
"""

def remove_duplicated_numbers_from_the_list(numbers_list:list) -> list:
    temp_list = list()
    for elem in numbers_list:
        if elem not in temp_list and type(elem)==int:
            temp_list.append(elem)
    return temp_list

my_list = [1, 2, 10, 3, 5, 5, 3, 4, 5, 6, 7 ,8 ,9, 10]    
print(remove_duplicated_numbers_from_the_list(my_list))     
