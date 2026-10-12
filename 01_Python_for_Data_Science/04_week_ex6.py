"""
Exercise 6
Create a simple calculator that provides functions to add, subtract, multiply and divide two numbers. Implement
the missing parts to execute the main() function below without an error.
# implement missing functions here ...
def main():
print("Select operation.")
print("1.Add")
print("2.Subtract")
print("3.Multiply")
print("4.Divide")
# Take input from the user
choice = input("Enter choice(1/2/3/4):")
num1 = int(input("Enter first number: "))
num2 = int(input("Enter second number: "))
if choice == '1':
print(num1,"+",num2,"=", add(num1,num2))
elif choice == '2':
print(num1,"-",num2,"=", subtract(num1,num2))
elif choice == '3':
print(num1,"*",num2,"=", multiply(num1,num2))
elif choice == '4':
print(num1,"/",num2,"=", divide(num1,num2))
else:
print("Invalid input")
main()
"""

# implement missing functions here ...
def main():
    def add(num1, num2):
        return num1 + num2
    def subtract(num1, num2):
        return num1 - num2
    def multiply(num1, num2):
        return num1 * num2
    def divide(num1, num2):
            return num1 / num2

    print("Select operation.")
    print("1.Add")
    print("2.Subtract")
    print("3.Multiply")
    print("4.Divide")
    # Take input from the user
    choice = input("Enter choice(1/2/3/4):")
    num1 = int(input("Enter first number: "))
    num2 = int(input("Enter second number: "))
    if choice == '1':
        print(num1,"+",num2,"=", add(num1,num2))
    elif choice == '2':
        print(num1,"-",num2,"=", subtract(num1,num2))
    elif choice == '3':
        print(num1,"*",num2,"=", multiply(num1,num2))
    elif choice == '4':
        print(num1,"/",num2,"=", divide(num1,num2))
    else:
        print("Invalid input")

main()