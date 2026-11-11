"""
Exercise 2
Change the solution of the previous exercise such that the program writes the output to a potentially newly created
file musicians2.txt.
"""

file_path = ".\\01_Python_for_Data_Science\\musicians.txt"
file_path_new_file = ".\\01_Python_for_Data_Science\\musicians2.txt"

# read file
with open(file_path, "r") as file:
    content_list = file.readlines()

# check if the content ,ist contain 3xn elements
if len(content_list)%3 == 0:
    index = 0
    with open(file_path_new_file, "w") as new_file:
        for _ in range(int(len(content_list)/3)):
            new_line = f"{content_list[index].replace("\n", "")} {content_list[index+1].replace("\n", "")} ({content_list[index+2].replace("\n", "").upper()})"
            print(f"saved: {new_line}")
            new_file.write(f"{new_line}\n")
            index += 3
