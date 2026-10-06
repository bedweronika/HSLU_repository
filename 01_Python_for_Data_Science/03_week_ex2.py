"""
Write a python program to count the number of even and odd numbers contained in a sequence of numbers.

Example:
numbers = (1,2,3,4,5,6,7,8,9,10)
Expected result:
Even numbers: 5
Odd numbers: 5
"""

enter = input("\nWrite sequence of integers, separated by coma:\n")

enter_list = enter.split(",")
even_count = 0
odd_count = 0

for numb in enter_list:
    if int(numb):
        if int(numb) % 2 == 0:
          even_count += 1
        else:   
           odd_count += 1
    else:
       print("Wrong INPUT.")

print(f"\nEven numbers: {even_count}\nOdd numbers: {odd_count}")
