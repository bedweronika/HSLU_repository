"""
Exercise 3
Given a list of n (even) numbers. Write a program that prints for each pair [(first, last), (second, second last ),
etc...] the following string: X times Y is: X*Y
Use in place calculations to calculate the product directly in the string within the print statement.
"""

is_n_correct=True
while is_n_correct:
    n = int(input("Enter the even number between 2-100:\t"))
    if 1<n<101 and n%2==0:
        numbers_list = [n for n in range(1, n+1)]
        is_n_correct=False
    else:
        print("\nEntered number is over the range or is not even, try again! ", end="\n")
print(numbers_list)

for idx, numb in enumerate(numbers_list):
    if(idx + 1 > len(numbers_list)/2):
        break

    print(f"{numbers_list[idx]} times {numbers_list[- 1 - idx ]} is: {numbers_list[- 1 - idx]*numbers_list[idx]}")