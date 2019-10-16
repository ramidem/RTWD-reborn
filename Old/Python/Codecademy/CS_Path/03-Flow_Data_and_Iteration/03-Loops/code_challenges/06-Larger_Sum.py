"""
Returns which List has larger sum.
"""

def larger_sum(lst1, lst2):
    sum1 = 0
    sum2 = 0

    for a in range(len(lst1)):
        sum1 += lst1[a]

    for b in range(len(lst2)):
        sum2 += lst2[b]

    if sum1 >= sum2:
        return lst1
    else:
        return lst2

print(larger_sum([1, 9, 5], [2, 3, 7]))
