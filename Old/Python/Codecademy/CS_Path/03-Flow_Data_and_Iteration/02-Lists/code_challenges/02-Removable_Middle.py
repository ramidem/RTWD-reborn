"""
This function returns a list where all the elements in lst with an index between
start and end (inclusive) are removed
"""

def remove_middle(lst, start, end):
  first = lst[:start]
  new_lst = first + lst[end + 1:]
  return new_lst

#Uncomment the line below when your function is done
print(remove_middle([4, 8, 15, 16, 23, 42], 1, 3))
