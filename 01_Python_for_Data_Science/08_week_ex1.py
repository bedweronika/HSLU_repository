"""
Exercise 1
Path to your first external package functionalities:
– Install Numpy on your environment
– Import the external source i.e. the Numpy package
– Copy the list of float numbers from below
– Use the Numpy package to compute the 50% and 95% percentile
list_of_numbers = [0.029, 0.551, 0.27, 0.727, 0.867, 0.954, 0.360, 0.018, 0.045, 0.470,
0.455, 0.628, 0.538, 0.524, 0.449]
"""
import numpy as np

list_of_numbers = [0.029, 0.551, 0.27, 0.727, 0.867, 0.954, 0.360, 0.018, 0.045, 0.470,
0.455, 0.628, 0.538, 0.524, 0.449]

print(np.quantile(list_of_numbers, 0.95)*0.5)

