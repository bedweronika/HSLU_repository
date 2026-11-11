"""
Assuming, the following series s is given, that provides quality measures qm of a wireless link that ranges 
from 0 to 1 for bad and high quality. The true quality q follows a quadratic function to the qualit measures qm.

s = [0.3, 0.96, 0.7, 0.52, 0.09, 0.68, 0.82, 0.48, 0.33, 0.5, 0.08, 0.02, 0.75, 0.1, 0.31, 0.22, 0.82, 0.47, 0.11, 0.79, 0.13, 0.52, 0.34, 0.06, 0.33, 0.39, 0.14, 0.35, 1.0, 0.16, 0.11, 0.96, 0.65, 0.37, 0.12, 0.26, 0.78, 0.81, 0.75, 0.98, 0.36, 0.44, 0.27, 0.35, 0.55, 0.51, 0.6, 0.54, 0.05, 0.13]

Since the quality q follows a quadratic function to the quality measure qm (q = qm^2), the quality is not intuitively 
comprehendsible for humans.

Write some lines of code (hint: start with a linear function) that creates a dictionary q_dict including 
the index of q in s, the quality measure qm and a human interpretable category. 
The five categories are equally distributed along the quality q according the following distribution:
1   bad:       qm = [0.000 ... 0.447]
2   weak:      qm = ]0.447 ... 0.632]
3   balanced:  qm = ]0.632 ... 0.775]
4   good:      qm = ]0.775 ... 0.894]
5   very good: qm = ]0.894 ... 1.000]

""" 

s = [0.3, 0.96, 0.7, 0.52, 0.09, 0.68, 0.82, 0.48, 0.33, 0.5, 0.08, 0.02, 0.75, 0.1, 0.31, 0.22, 0.82, 0.47, 0.11, 0.79, 0.13, 
     0.52, 0.34, 0.06, 0.33, 0.39, 0.14, 0.35, 1.0, 0.16, 0.11, 0.96, 0.65, 0.37, 0.12, 0.26, 0.78, 0.81, 0.75, 0.98, 0.36, 
     0.44, 0.27, 0.35, 0.55, 0.51, 0.6, 0.54, 0.05, 0.13]


q_dict = {}

for qm in s:
    if qm <=0.447:
        category = 'bad'
    elif qm <= 0.632:
        category = 'weak'
    elif qm <= 0.775:
        category = 'balanced'
    elif qm <= 0.894:
        category = 'good'
    elif qm <= 1:
        category = 'very good'
    else:
        category = "WRONG qm VALUE"

    q_dict[qm] = category



print(q_dict)