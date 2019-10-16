# Over Budget
# ===========
def over_budget(budget, food_bill, electricity_bill, internet_bill, rent):
    bills = food_bill + electricity_bill + internet_bill + rent
    if budget < bills:
        return True
    else:
        return False

print(over_budget(100, 20, 30, 10, 40))
# should print False
print(over_budget(80, 20, 30, 10, 30))
# should print True
