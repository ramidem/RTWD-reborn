# Control Flow

In Python, a script will execute from the top down until there is nothing left
to run. Gateways known as conditional statements tell the computer when it
should execute certain blocks of code. e.g., If condition is met, then run this
function

## Boolean Expressions

A boolean expression can either be `True` or `False`. These two are their own
special type: `bool`

## Relational Operators: 

**Equals or Not Equals**

```python
(5 * 2) - 1 == 8 + 1
# prints `True`
13 - 6 != (3 * 2) + 1
# prints `False`
```

**Greater than: `>`, Less than: `<`, Greater than or equal to: `>=`, Less than
or equal to: `<=`**

```python
def greater_than(x, y):
  if x > y:
    return x
  if x == y:
    return "These numbers are the same"

print(greater_than(3, 1))

def graduation_reqs(credits):
  if credits >= 120:
    return "You have enough credits to graduate!"

print(graduation_reqs(120))
```

**`and`**

`and` combines two boolean expressions and evaluates as `True` if both its components are `True`, but `False` otherwise.

```python
statement_one =	(2 + 2 + 2 >= 6) and (-1 * -1 < 0)

statement_two = (4 * 2 <= 8) and (7 - 1 == 6)

def graduation_reqs(gpa, credits):
  if gpa >= 2.0 and credits >= 120:
    return "You meet the requirements to graduate!"

print(graduation_reqs(2.0, 120))

print(statement_one) # False
print(statement_two)  # True
```

**`or`**

The boolean operator `or` combines two expressions into a larger expression that is `True` if either component is `True`.

```python
statement_one = (2 - 1 > 3) or (-5 * 2 == -10)

statement_two = (9 + 5 <= 15) or (7 != 4 + 3)

print(statement_one)
print(statement_two)

def graduation_mailer(gpa, credits):
  if credits >=120 or gpa >= 2.0:
    return True
  
print(graduation_mailer(2.0, 120))
```

**`not`**

When applied to any boolean expression it reverses the boolean value.

```python
def graduation_reqs(gpa, credits):
  if (gpa >= 2.0) and (credits >= 120):
    return "You meet the requirements to graduate!"
  if (gpa >= 2.0) and not (credits >= 120):
    return "You do not have enough credits to graduate."
  if not (gpa >= 2.0) and (credits >= 120):
    return "Your GPA is not high enough to graduate."
  if not (gpa >= 2.0) and not (credits >= 120):
    return "You do not meet either requirement to graduate!"
```

## Boolean Variables

Any variable that is assigned either `True` or `False`. 

```python
set_to_true = True
set_to_false = False

bool_one = 1 + 1 == 2
bool_two = 1 != 1

my_bool_true = True
print(type_(my_bool_true))
```

## If Statements

Computer executes the program if the condition is met

```python
if 2 == 4 - 2:
  print("apple!")

def dave_check(user_name):
  if user_name == "Dave":
    return "Get off my computer Dave!"
  if user_name == "angela_catlady_87":
    return  "I know it is you Dave! Go away!"

user_name = "angela_catlady_87"
print(dave_check(user_name)) 
```

## Else Statements

`else` statements allow us to elegantly describe what we want our code to do when certain conditions are **not** met.


```python
def graduation_reqs(gpa, credits):
  if (gpa >= 2.0) and (credits >= 120):
    return "You meet the requirements to graduate!"
  if (gpa >= 2.0) and not (credits >= 120):
    return "You do not have enough credits to graduate."
  if not (gpa >= 2.0) and (credits >= 120):
    return "Your GPA is not high enough to graduate."
  if not (gpa >= 2.0) and not (credits >= 120):
    return "You do not meet either requirement to graduate!"
  else:
    return "You do not meet the GPA or the credit requirement for graduation."
```

## Else If Statements

The `elif` statement allows you to check multiple expressions for `True` and execute a block of code as soon as one of the conditions evaluates to `True`.
[Source](https://www.tutorialspoint.com/python/python_if_else.htm)

```python
def grade_converter(gpa):
  if gpa >= 4.0:
    return "A"
  elif gpa >= 3.0:
    return "B"
  elif gpa >= 2.0:
    return "C"
  elif gpa >= 1.0:
    return "D"
  elif gpa >= 0.0:
    return "F"
  
print(grade_converter(2.0))
```

## Try and Except Statements

`if`, `elif`, and `else` statements aren't the only way to build a control flow into your program. You can use `try` and `except` statements to check for possible errors that a user might encounter.

```python
def raises_value_error():
  try:
    raise ValueError
  except ValueError:
    print("You raised a ValueError!")
  
raises_value_error()
```

# Review

Great job! We covered a ton of material in this lesson and you've increased the number of tools in your Python toolkit by several fold. Let's review what you've learned this lesson:

- Boolean expressions are statements that can be either `True` or `False`
- A boolean variable is a variable that is set to either `True` or `False`.
- You can create boolean expressions using relational operators:
  - Equals: `==`
  - Not equals: `!=`
  - Greater than: `>`
  - Greater than or equal to: `>=`
  - Less than: `<`
  - Less than or equal to: `<=`
- `if` statements can be used to create control flow in your code.
- `else` statements can be used to execute code when the conditions of an `if` statement are not met.
- `elif` statements can be used to build additional checks into your `if` statements
- `try` and `except` statements can be used to build error control into your code.

```python

def applicant_selector(gpa, ps_score, ec_count):
  the_gpa = gpa >= 3.0
  the_ps_score = ps_score >= 90
  the_ec_count = ec_count >= 3
  
  if the_gpa and the_ps_score and the_ec_count:
    return "This applicant should be accepted."
  elif the_gpa and the_ps_score and not the_ec_count:
  	return "This applicant should be given an in-person interview."
  else:
  	return "This applicant should be rejected."

print(applicant_selector(0.2, 50, 3))
```

