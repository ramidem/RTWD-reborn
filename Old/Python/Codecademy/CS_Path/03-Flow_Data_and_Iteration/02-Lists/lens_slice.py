# Len's Slice
# Toppings
toppings = ['pepperoni', 'pineapple', 'cheese', 'sausage', 'olives', 'anchovies', 'mushrooms']

# Prices
prices = [2, 6, 1, 3, 2, 7, 2]

# Number of Pizza
num_pizzas = len(toppings)

# Toppings and Prices
pizzas = list(zip(prices, toppings))

# Cheapest Pizza
cheapest_pizza = sorted(pizzas)[0]

# Priciest Pizz
priciest_pizza = sorted(pizzas)[-1]

# Three Cheapest
three_cheapest = sorted(pizzas)[:3]

print("We sell %s kinds of pizza!" %(num_pizzas))
print(sorted(pizzas))
print('Cheapest', cheapest_pizza)
print('Priciest', priciest_pizza)
print('3 Cheapest', three_cheapest)

