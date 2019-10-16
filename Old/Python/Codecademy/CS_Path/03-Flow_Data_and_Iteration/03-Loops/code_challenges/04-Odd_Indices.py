"""
Returns a new list from the previous list with odd indices.
"""

def odd_indices(lst):
  odds = []

  for i in range(len(lst)):
    if i % 2 != 0:
      odds.append(lst[i])

  return odds

print(odd_indices([4, 3, 7, 10, 11, -2]))
