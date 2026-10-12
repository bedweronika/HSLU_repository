"""
Exercise 2
Use the ”XXX”.format() syntax to produce the following print out:
My name is Giacomo, I am 10 years old, and I live in Padova.
based on the given dictionary. In the formatting call use:
• order based
• number based
• key-word based
• dictionary-key based
versions to insert the variables.
insert_dict = {'name':'Giacomo', 'age':'10', 'city':'Padova'}
"""

insert_dict = {'name':'Giacomo', 'age':'10', 'city':'Padova'}

print("Version 1 - order based:\nMy name is {}, I am {} years old, and I live in {}.\n".format(insert_dict["name"], insert_dict["age"], insert_dict["city"]))
print("Version 2 - number based:\nMy name is {0}, I am {1} years old, and I live in {2}.\n".format(insert_dict["name"], insert_dict["age"], insert_dict["city"]))
print("Version 3 - key-word based:\nMy name is {name}, I am {years} years old, and I live in {city}.\n".format(name = insert_dict["name"], years = insert_dict["age"], city = insert_dict["city"]))
print("Version 4 - dictionary-key based:\nMy name is {0[name]}, I am {0[age]} years old, and I live in {0[city]}.\n".format(insert_dict))