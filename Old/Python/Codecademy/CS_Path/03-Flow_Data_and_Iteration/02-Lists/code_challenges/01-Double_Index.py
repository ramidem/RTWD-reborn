"""
This function doubles the element at index of lst and returns the new list with
doubled value.

If index is not a valid index, the function returns the original list.
"""

def double_index(lst, index):
  if len(lst) > index:
    indx = lst[index] * 2
    lst[index] = indx
    return lst
  else:
    return lst

print(double_index([3, 8, -10, 12], 2))
print(double_index([3, 8, -10, 12], 5))
