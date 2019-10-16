# Operations on Lists

- Get the length of a list
- Select subsets of a list (slicing)
- Count the number of times that an element appears in a list
- Sort a list of items

## Length of a List

```python
list1 = range(2, 20, 3)
list1_len = len(list1)
print(list1_len)
```

## Selecting List Elements

```python
# Python lists are zero-indexed
# Select a single element by using a square brackets `[]` and the index of the
list item

employees = ['Michael', 'Dwight', 'Jim', 'Pam', 'Ryan', 'Andy', 'Robert']
index4 = employees[4]
print(len(employees))

# We can use `-1` to select the last item of a list
shopping_list = ['eggs', 'butter', 'milk', 'cucumbers', 'juice', 'cereal']

print(len(shopping_list))
last_element = shopping_list[-1]
element5 = shopping_list[5]
print(last_element, element5)
```

## Slicing Lists

`var[start:end]`

Where:
  - `start` is the index of the first element to be included in the selection
  - `end` is the index of one or more than the last index to be selected

```python
suitcase = ['shirt', 'shirt', 'pants', 'pants', 'pajamas', 'books']
beginning = suitcase[0:4]
middle = suitcase[2:4]

start = suitcase[:3]
end = suitcase[4:]

print(beginning, middle)
print(start, end)
```

## Counting Elements in a List

```python
letters = ['m', 'i', 's', 's', 'i', 's', 's', 'i', 'p', 'p', 'i']

print(letters.count('i'))

votes = ['Jake', 'Jake', 'Laurie', 'Laurie', 'Laurie', 'Jake', 'Jake', 'Jake', 'Laurie', 'Cassie', 'Cassie', 'Jake', 'Jake', 'Cassie', 'Laurie', 'Cassie', 'Jake', 'Jake', 'Cassie', 'Laurie']

jake_votes = votes.count('Jake')
print(jake_votes)
```

## Sorting Lists

```python
addresses = ['221 B Baker St.', '42 Wallaby Way', '12 Grimmauld Place', '742 Evergreen Terrace', '1600 Pennsylvania Ave', '10 Downing St.']

# `.sort()` comes after a list
addresses.sort()
print(addresses)

# `sorted()` comes before a list, and generates a new list
games = ['Portal', 'Minecraft', 'Pacman', 'Tetris', 'The Sims', 'Pokemon']

games_sorted = sorted(games)

print(games_sorted)
```
## Review

```python
inventory = ['twin bed', 'twin bed', 'headboard', 'queen bed', 'king bed', 'dresser', 'dresser', 'table', 'table', 'nightstand', 'nightstand', 'king bed', 'king bed', 'twin bed', 'twin bed', 'sheets', 'sheets', 'pillow', 'pillow']

inventory_len = len(inventory)
print(inventory_len)

first = inventory[0]
print(first)

last = inventory[-1]
print(last)

inventory_2_6 = inventory[2:6]
print(inventory_2_6)

first_3 = inventory[:3]
print(first_3)

twin_beds = inventory.count('twin bed')
print(twin_beds)

inventory.sort()

print(inventory)
```
