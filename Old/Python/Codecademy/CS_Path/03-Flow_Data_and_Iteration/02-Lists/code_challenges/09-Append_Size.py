"""
Append the size of the list to end of the list.
"""

def append_size(lst):
    lst.append(len(lst))
    return lst

print(append_size([23, 42, 108]))
