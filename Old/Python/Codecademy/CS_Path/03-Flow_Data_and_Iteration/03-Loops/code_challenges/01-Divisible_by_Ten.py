"""
Returns the amount of number in the list that are divisible by ten.
"""
def divisible_by_ten(nums):
    ten = []
    for num in nums:
        if num % 10 == 0:
            ten.append(num)
    return len(ten)

print(divisible_by_ten([20, 25, 30, 35, 40]))
