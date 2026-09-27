"""
Exercise 2
You have to divide your adult customers into 4 categories depending on their age. Currently the following rules apply:
• If: 18 ≤ customer age < 25, category is: ’Youth’.
• If: 25 ≤ customer age < 35, category is: ’YoungAdult’.
• If: 35 ≤ customer age < 60, category is: ’MiddleAged’.
• If: 60 ≤ customer age, category is: ’Senior’.
As an example, the following output is to be generated after the user has entered the age of the customer (e.g. 22
year ) via ’input()’:
”The customer belongs to the ’Youth’ category!”
"""

customer_age = int(input("Enter customer age: \n"))

if customer_age < 18:
    print("Customer is too young.")
elif 18 <= customer_age < 25:
    print("The customer belongs to the ’Youth’ category!.")
elif 25 <= customer_age < 35:
    print("The customer belongs to the ’YoungAdult’ category!.")
elif 35 <= customer_age < 60:
    print("The customer belongs to the ’MiddleAged’ category!.")
elif 60 <= customer_age:
    print("The customer belongs to the ’Senior’ category!.")