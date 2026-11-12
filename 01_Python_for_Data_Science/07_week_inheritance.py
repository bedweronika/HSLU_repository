"""
Write a new class called 'MyStr' that inherits from str. In addition 'MyStr' provides a function called bi_rev() that returns 
every 2nd character in reverse order, beginning by the last character (i.e. it prints the characters n, n-2, n-4, ...).

"""

class MyStr(str):

    def __init__(self, text):
        super().__init__()
        self.text = text

    def bi_rev(self):
        return self.text[::-2]



txt1 = MyStr('z!me ngosdf nsjir zbgocjx aewh!T')
print(txt1.bi_rev())