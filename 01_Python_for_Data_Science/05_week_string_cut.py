"""
Program a function strcut(...) that cuts all strings passed to the function to n characters and prints 
all shortened strings. Thereby, the number of passed strings can be of arbitrary size.
 
#possible function call:
strcut("hello", "world", n=3)

#output:
'hel'
'wor'
"""

def strcut(*words, n):
    for word in words:
        if len(word) >=n:
            print(word[0:n])
        else: 
            print(word)

strcut("hello", "world", n=3)