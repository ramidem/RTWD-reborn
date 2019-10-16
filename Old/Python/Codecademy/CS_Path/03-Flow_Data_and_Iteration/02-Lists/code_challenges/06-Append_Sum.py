"""
Adds the last two elements of `lst` together and append the result to `lst`.
This process repeats 3 times.
"""

def append_sum(lst):
    first = lst[-1] + lst[-2]
    lst.append(first)

    second = lst[-1] + lst[-2]
    lst.append(second)

    third = lst[-1] + lst[-2]
    lst.append(third)

    return lst

print(append_sum([1, 1, 2]))
