"""
Combines lists and returns the sorted elements
"""

def combine_sort(lst1, lst2):
    new_lst = lst1 + lst2
    new_lst.sort()
    return new_lst

print(combine_sort([4, 10, 2, 5], [-10, 2, 5, 10]))
