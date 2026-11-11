"""
Write a program that combines three lines from the file musicians.txt into one line and writes them to standard
output using print(). Hence, an output line should contain first name, last name and artist name or band.
The band or artist name should be printed in round brackets and in captial letters.
Example: ”Marshall Bruce Mathers III (EMINEM)”
"""

file_path = ".\\01_Python_for_Data_Science\\musicians.txt"

# read file
with open(file_path, "r") as file:
    content_list = file.readlines()

# check if the content ,ist contain 3xn elements
if len(content_list)%3 == 0:
    index = 0
    for _ in range(int(len(content_list)/3)):
        print(f"{content_list[index].replace("\n", "")} {content_list[index+1].replace("\n", "")} ({content_list[index+2].replace("\n", "").upper()})")
        index += 3
