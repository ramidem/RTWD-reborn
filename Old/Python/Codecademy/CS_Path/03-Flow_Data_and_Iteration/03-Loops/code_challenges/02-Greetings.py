"""
Adds string "Hello, " in front of each name is names.
"""

def add_greetings(names):
    greeting = []

    for name in names:
        greeting.append("Hello, " + name)

    return greeting

print(add_greetings(["Owen", "Max", "Sophie"]))
