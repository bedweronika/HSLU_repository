"""
Write a Python program which takes two digits m (rows) and n (columns) as input and generates a two-dimensional
structure (e.g. nested list). The value in the i-th row and j-th column should be i*j.
"""
rows = input("insert number of rows:\t")
columns = input("insert number of columns:\t")

result = list()
for row in range(int(rows)):
    for column in range(int(columns)):
        row_list = [i*row for i in range(int(columns))]
    result.append(row_list)
print(result)
