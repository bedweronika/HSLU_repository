"""
At a party you want to know how often guests toast with wine before dinner. Assume each of n guests has one glass and toasts with all other guests once.

Count in a for- and while-loop how often n guests toast with wine.
Note: you can check the result with the formula   n(n-1)/2
"""

guest_number = eval(input("How many guests is in the party?\t"))

toast_count = 0
if guest_number < 1:
    print (f"\nNumber of people cannot be negative or equal 0!!!\n")
elif guest_number >= 1:
    for guest in range(guest_number):
        toast_count += (guest_number - 1 - guest)
    calc_toasts = guest_number*(guest_number-1)/2
    print (f"\nToasts for loop: {toast_count} vs CALCULATED n(n-1)/2: {calc_toasts}\n")
