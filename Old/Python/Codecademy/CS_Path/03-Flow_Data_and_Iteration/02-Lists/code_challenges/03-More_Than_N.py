"""
Should return True if `item` in the `lst` appears more than `n` times.
False, otherwise.
"""

def more_than_n(lst, item, n):
    if lst.count(item) > n:
        return True
    elif lst.count(lst) <= n:
        return False

print(more_than_n([2, 4, 6, 2, 3, 2, 1, 2], 2, 3)) # True
print(more_than_n([2, 4, 6, 2, 3, 2, 1, 2], 2, 4)) # False
