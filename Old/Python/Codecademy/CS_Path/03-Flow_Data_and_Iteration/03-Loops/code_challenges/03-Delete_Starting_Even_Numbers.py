"""
Deletes the even numbers at the beginning of the list and return the rest. Also,
returns a blank list if they are all even numbers.
"""

def delete_starting_evens(lst):
  first_even = []

  for i in range(len(lst)):
    if lst[i] % 2 == 0:
      first_even.append(lst[i])
    else:
      break
  return lst[len(first_even):]

print(delete_starting_evens([4, 8, 10, 11, 12, 15]))
print(delete_starting_evens([4, 8, 10]))
