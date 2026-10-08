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
    temp_string = temp_string[:-2]
    if sign in string.ascii_letters:
        iter += 1
        if iter%7==0:
            result_string += sign

print(result_string)

