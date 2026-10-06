"""
Suppose we want to draw a Christmas tree 

Create a program that asks the user for the trunk-excluded-height of the Christmas tree and then draws the tree
according to these rules:
• The height of the trunk is always 2
• The width of the trunk 3 in case the entire height is > 5 or 1 in case the entire height is <= 5
"""

tree_high = int(input("Input the christmas tree high:\t"))
signs_number = (tree_high - 1) * 2 + 1

# body
for level in range(tree_high):
    signs = level * 2 + 1
    spaces_one_side = int((signs_number - signs) / 2)
    print(" " * spaces_one_side + "x" * signs + " " * spaces_one_side)
    

# trunk
if tree_high <= 5:
    spaces_trunk = " " * int((signs_number - 1) / 2)
    print( spaces_trunk + "x" + spaces_trunk )
    print(spaces_trunk + "x" + spaces_trunk )
elif tree_high > 5:
    spaces_trunk = " " * int((signs_number - 3) / 2)
    print( spaces_trunk + "xxx" + spaces_trunk )
    print(spaces_trunk + "xxx" + spaces_trunk )
