"""
Base raised to the power of Power.
"""

def exponents(bases, powers):
  powerful = []

  for base in bases:
    for power in powers:
      raised = base ** power

      powerful.append(raised)

    return powerful

print(exponents([2, 3, 4], [1, 2, 3]))
