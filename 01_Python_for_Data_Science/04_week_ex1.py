"""
Use the f”XXX”-syntax to produce the following print out:
Hello Andreas and Ramon!
based on the given variables:
var1 = "and"
var2 = "Andreas"
var3 = "!"
var4 = "Hello"
var5 = "Ramona"
"""

var1 = "and"
var2 = "Andreas"
var3 = "!"
var4 = "Hello"
var5 = "Ramona"

print(f"version 1 - using f-string:\n {var4} {var2} {var1} {var5}{var3}\n")
print("version 2 - using format with order:\n {} {} {} {}{}\n".format(var4, var2, var1, var5, var3))
print("version 3 - uaing format without order:\n {3} {1} {0} {4}{2}\n".format(var1, var2, var3, var4, var5))
