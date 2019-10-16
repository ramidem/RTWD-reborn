# Loops

- _for loops_ moves through each item in a list.
- _while loops_ keep going until a condition is met.
- _list comprehension_ create new lists

## For Loops

Iterates through the items in a list.

```python
dog_breeds = ['french_bulldog', 'dalmation', 'shihtzu', 'poodle', 'collie']

# For Loop
for breed in dog_breeds:
  print(breed)

# Range in For Loop
promise = "I will not chew gum in class"

for i in range(6):
  print(promise)

# Infinite Loops
students_period_A = ["Alex", "Briana", "Cheri", "Daniele"]
students_period_B = ["Dora", "Minerva", "Alexa", "Obie"]

for student in students_period_A:
  # Changing this to students_period_A will make infinite loop
  students_period_B.append(student)
  print(student)

print(sorted(students_period_B))

# Breaks prevent Infinite Loops
dog_breeds_available_for_adoption = ['french_bulldog', 'dalmation', 'shihtzu', 'poodle', 'collie']
dog_breed_I_want = 'dalmation'

for dog in dog_breeds_available_for_adoption:
  print(dog)
  if dog == dog_breed_I_want:
    print("They have the dog I want!")
    break

# Continue
ages = [12, 38, 34, 26, 21, 19, 67, 41, 17]

for age in ages:
  if age < 21:
    continue
  print(age)
```

## While Loops

The while loop performs a set of code until some condition is reached.

```python
all_students = ["Alex", "Briana", "Cheri", "Daniele", "Dora", "Minerva", "Alexa", "Obie", "Arius", "Loki"]
students_in_poetry = []

# initiate
count = 0

while count < 6:
  # remove the last element
  student = all_students.pop()

  # add it here
  students_in_poetry.append(student)

  # increment count
  count += 1

print(students_in_poetry)
```

## Nested Loops

A loop inside a loop

```python
sales_data = [[12, 17, 22], [2, 10, 3], [5, 12, 13]]

scoops_sold = 0

for location in sales_data:
  for scoops in location:
    scoops_sold += scoops

print(scoops_sold)
```

## List Comprehensions

```python
heights = [161, 164, 156, 144, 158, 170, 163, 163, 157]

can_ride_coaster = [height for height in heights if height > 161]

# For Loop
# for height in heights:
#   if height > 161:
#     can_ride_coaster.append(height)
    
print(can_ride_coaster)

mod = [i for i in range(0, 100) if i % 2 == 0]
print(mod)

# Converts Celsius to Fahrenheit
celsius = [0, 10, 15, 32, -5, 27, 3]

fahrenheit = [((c_temp * 9/5) + 32) for c_temp in celsius]

print(fahrenheit)
```

## Review

```python
single_digits = [i for i in range(0, 10)]

squares = []

for number in single_digits:
  squared = number**2
  squares.append(squared)

print(squares)

cubes = [cube**3 for cube in single_digits]

print(cubes)
```
