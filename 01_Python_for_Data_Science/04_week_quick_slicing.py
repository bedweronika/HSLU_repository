"""
From the following given string, slice every 7th element in reverse order by omitting all heading 
and tailing special characters with appropriate start and end positions.

$#@|~aslbagjkels nspielbiack ipnzqnmyxrclwqpiofpgwirmvoiupq riepwqdjoi pioack o ocpalsig====%%%**>
"""
import string

my_string = "$#@|~aslbagjkels nspielbiack ipnzqnmyxrclwqpiofpgwirmvoiupq riepwqdjoi pioack o ocpalsig====%%%**>"

temp_string = my_string
iter = 0
result_string = ""
while temp_string != "":
    sign = temp_string[-1]
    temp_string = temp_string[:-1]
    if sign in string.ascii_letters or sign == " ":
        if iter%7==0:
            result_string += sign
        iter += 1

print(string.ascii_letters)
print(result_string)

# teacher solution
print(my_string[-11:4:-7])
