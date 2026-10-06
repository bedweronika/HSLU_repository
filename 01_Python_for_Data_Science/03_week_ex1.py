"""Write a Python program that constructs the following pattern using nested for loops:

 *
 **
 ***
 **
 *

"""
while True:
    int_numb = 0
    int_numb = int(input("Input the integer number from 1 to 30:\t"))
    if 1 <= int_numb <= 30:
        # return_steps = 0
        for i in range(int_numb):
            print("*" * (i+1))
        while i > 0:
            print("*" * i)
            i -= 1
        break
    else:
        print("\nThe number is not in the range 1-30, try again.")
        continue
