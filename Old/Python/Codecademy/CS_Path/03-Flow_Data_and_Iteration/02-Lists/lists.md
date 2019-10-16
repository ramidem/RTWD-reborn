# Python Lists

A _list_ is an ordered set of objects in Python.

```python
# A list begins and ends with square brackets
# Each item is separated by a comma
# it is considered a good practice to insert space after each comma

heights = [61, 70, 67, 64]

# Lists can contain more than just numbers

ints_and_strings = [1, 2, 3, 'four', 'five', 'six']

# Lists can also be other lists

ages = [['Aaron', 15], ['Dhruti', 16]]
```

## `zip`

```python
names = ['Jenny', 'Alexus', 'Sam', 'Grace']
dogs_names = ['Elphonse', 'Dr. Doggy DDS', 'Carter', 'Ralph']

names_and_dogs_names = zip(names, dogs_names)

print(list(names_and_dogs_names))
```

## Empty Lists

```python
my_empty_list = []
```

## Growing a List

We can add a single element to a list using `.append()`.

```python
orders = ['daisies', 'periwinkle']
print(orders)

orders.append('tulips')
orders.append('roses')
print(orders)
```

To add multiple items to a list, we can use `+` to combine two lists.

```python
orders = ['daisy', 'buttercup', 'snapdragon', 'gardenia', 'lily']

# Create new orders here:
new_orders = orders + ['lilac', 'iris']
print(new_orders)
```

## `range()`

```python
range1 = range(0,8)
print(range1)

# This list starts at 0 and ends before 40 with a difference of 5 between items
list2 = range(0, 40, 5)
```

## Review

```python
first_names = ['Ainsley', 'Ben', 'Chani', 'Depak']
age = []
age.append(42)
all_ages = age + [32, 41, 29]
name_and_age = zip(first_names, all_ages)
ids = range(0,4)
```

