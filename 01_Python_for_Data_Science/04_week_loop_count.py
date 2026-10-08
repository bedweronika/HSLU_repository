"""
Calculation of the Eulers number exp(1) = 2.71828 18284 590...
Note: more decimal numbers (e.g. >11) may lead to differences to the true sum due to limited accuracy in Python and rounding effects!

The Eulers number is infinite and calculated with the formula:


1. Calculate the first 11 decimal numbers using the given formula, while- or for-loops, and if-clauses. 
Keep in mind, the denominator of the last addend must be >= 10^11. hint for double check: n=14

2. Sum all decimal numbers of the resulting Euler-number up to the 11th position. In fact, sum the bold numbers of 2.71828182845 in a loop.
"""

n = 15    # it needs to be at least 15 becasue then NOT(last denominator >= 10^11)
rounded = 11

calculated_number_list = list()
calculated_number = 0

for k in range(n+1):
    divider = 1
    for div in range(1, k+1):
        divider = divider * div
        if div == n:
            print(f"\ndenominator: \t{divider}, 10^11: \t{10**11}")
            print("calculated_number >= 10^11:", divider >= 10**11)

    calculated_number_list.append(round(1/divider, rounded))
    calculated_number += calculated_number_list[-1]


print()
print(calculated_number_list)
print(round(calculated_number, rounded))
print()
