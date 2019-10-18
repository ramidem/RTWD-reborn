# Methods

# Define a Method
def sayMessage
  puts "Hey!"
  puts "What's up?"
end

# Call a Method
sayMessage
sayMessage
sayMessage

# Methods Parameters
def say_hello(name)
  puts "hello, " + name + "!"
end

say_hello("Med")
say_hello("Self")

def fave_food(food1, food2)
  puts "I like to eat " + food1 + " and " + food2 + "."
end

fave_food("eggs", "bread")

# Methods Return
def calc_avg (num1, num2)
  # calculate the average of 2 numbers
  return (num1 + num2) / 2.0
  # return keyword lets a method call evaluate to a value
end

puts calc_avg(4, 2)

my_avg = calc_avg(5, 10)

puts my_avg

# Average of Three Problem
def avg_of_three(num1, num2, num3)
  return (num1 + num2 + num3) / 3.0
end

puts avg_of_three(3, 7, 8)   # => 6.0
puts avg_of_three(2, 5, 17)  # => 8.0
puts avg_of_three(2, 8, 1)   # => 3.666666

def goodbye(name)
	return "Bye " + name + "."
end

puts goodbye("Daniel")   # => "Bye Daniel."
puts goodbye("Mark")     # => "Bye Mark."
puts goodbye("Beyonce")  # => "Bye Beyonce."