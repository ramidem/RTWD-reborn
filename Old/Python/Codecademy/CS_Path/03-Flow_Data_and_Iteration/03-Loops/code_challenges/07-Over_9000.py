"""
Returns the sum of list if it is already over 9000 then break. Otherwise, return
the sum of the list if it is not over 9000
"""
def over_nine_thousand(lst):
    over_nine_k = 0

    for i in range(len(lst)):
        over_nine_k += lst[i]

        if over_nine_k >= 9000:
            return over_nine_k

    return over_nine_k

print(over_nine_thousand([8000, 900, 120, 5000]))
print(over_nine_thousand([8000, 900]))
