"""
if `lst` modulo 2 is odd, return the middle element. Otherwise, return the
average of 2 middle elements
"""

def middle_element(lst):
    right = lst[int(len(lst) / 2)]
    left = lst[int(len(lst) / 2) - 1]

    if len(lst) % 2 == 1:
        return lst[int(len(lst) / 2)]
    else:
        return (right + left) / 2

print(middle_element([5, 2, -10, -4, 4, 5]))
print(middle_element([5, 2, 3, 4, 5]))
