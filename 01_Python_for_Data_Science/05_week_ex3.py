"""
Exercise 3
Write a function that accepts an arbitrary number of keyword arguments. The function should number each
keyword-value pair and print it in the following format:
1: keyword → value
2: keyword → value
...
n: keyword → value
"""

def print_numbered_kwargs(**kwargs):
    for ind, (key, value) in enumerate(kwargs.items()):
        print(f"{ind+1}: {key} → {value}")


# a) Test what happens if you pass key-word arguments in the format your_function(a=2, b=4)     
print_numbered_kwargs(a=2, b=4)
"""
1: a → 2
2: b → 4
"""

# b) Test what happens if you pass a positional argument
my_dict = {"a": 5, "B": "00"}
print_numbered_kwargs(**my_dict)
"""
1: a → 5
2: B → 00
"""

# c) Test what happens if you pass key word arguments as a dictionary {"a":2, "b": 4}
print_numbered_kwargs(**{"a":2, "b": 4})
"""
1: a → 2
2: b → 4
"""
