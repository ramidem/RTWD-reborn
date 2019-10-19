# Arrays

letters = ["a", "b", "c"]

print letters
puts "\n"
puts letters.length

my_array = ["med", true, false, 42]

print my_array[1]
puts "\n"

# Shovel - add to the end
letters << "d"
letters << "e"
print letters
puts "\n"

letters[1] = "z"
print letters
puts "\n"

# Iterating Arrays

def print_arr(arr)
  i = 0
  while i < arr.length
    puts arr[i]
    i += 1
  end
end

print_arr(letters)
print_arr(my_array)

# Doubler
def doubler(numbers)
	i = 0
  doubled = []
  while i < numbers.length
    doubled << numbers[i] * 2
    i += 1
  end
  return doubled
end

print doubler([1, 2, 3, 4]) # => [2, 4, 6, 8]
puts
print doubler([7, 1, 8])    # => [14, 2, 16]
puts

# Yell
def yell(words)
	i = 0
  shout = []
  while i < words.length
    shout << words[i] + "!"
    i += 1
  end
  return shout
end

print yell(["hello", "world"]) # => ["hello!", "world!"]
puts
print yell(["code", "is", "cool"]) # => ["code!", "is!", "cool!"]
puts

# Elements Times Index
def element_times_index(numbers)
	i = 0
  doubled = []
  while i < numbers.length
    # puts i
    doubled << numbers[i] * i
    i += 1
  end
  return doubled
end

print element_times_index([4, 7, 6, 5])       # => [0, 7, 12, 15]
puts
print element_times_index([1, 1, 1, 1, 1, 1]) # => [0, 1, 2, 3, 4, 5]
puts

# Even Numbers
def even_nums(max)
	i = 0
  evens = []
  while i <= max
    if i % 2 == 0
      evens << i
    end
    i += 1
  end
  return evens
end

print even_nums(10) # => [0, 2, 4, 6, 8, 10]
puts
print even_nums(5)  # => [0, 2, 4]
puts

# Range
def range(min, max)  
  i = min
  ranged = []
  while i <= max
    ranged << i
    i += 1
  end
  return ranged
end

print range(2, 7)   # => [2, 3, 4, 5, 6, 7]
puts
print range(13, 20) # => [13, 14, 15, 16, 17, 18, 19, 20]
puts

# Odd Range
def odd_range(min, max)
	i = min
  odds = []
  while i <= max
    if i % 2 != 0
      odds << i
    end
    i += 1
  end
  return odds
end

print odd_range(11, 18) # => [11, 13, 15, 17]
puts
print odd_range(3, 7)   # => [3, 5, 7]
puts

# Reverse Range
def reverse_range(min, max)
	i = max - 1
  reversed = []
  while i > min
    reversed << i
    i -= 1
  end
  return reversed
end

print reverse_range(10, 17) # => [16, 15, 14, 13, 12, 11]
puts
print reverse_range(1, 7)   # => [6, 5, 4, 3, 2]
puts

# First Half
def first_half(array)
	i = 0
  len = array.length / 2
  if array.length % 2 != 0
    len += 1
  end
  new_array = []
  while i < len # OR array.length / 2.0
    new_array << array[i]
    i += 1
  end
  return new_array
end

print first_half(["Brian", "Abby", "David", "Ommi"]) # => ["Brian", "Abby"]
puts
print first_half(["a", "b", "c", "d", "e"])          # => ["a", "b", "c"]
puts

# Factors Of
def factors_of(num)
	i = 1
  while i <= num
    if num % i == 0
        puts i
    end
    i += 1
  end
end

print factors_of(3)   # => [1, 3]
puts
print factors_of(4)   # => [1, 2, 4]
puts
print factors_of(8)   # => [1, 2, 4, 8]
puts
print factors_of(9)   # => [1, 3, 9]
puts
print factors_of(16)  # => [1, 2, 4, 8, 16]
puts

# Select Odds
def select_odds(numbers)
	i = 0
  odds = []
  while i < numbers.length
    if numbers[i] % 2 != 0
      odds << numbers[i]
    end
    i += 1
  end
  return odds
end

print select_odds([13, 4, 3, 7, 6, 11]) # => [13, 3, 7, 11]
puts
print select_odds([2, 4, 6])            # => []
puts

# Select Long Words
def select_long_words(words)
	longs = []
  i = 0
  while i < words.length
    if words[i].length > 4
      longs << words[i]
    end
    i += 1
  end
  return longs
end

print select_long_words(["what", "are", "we", "eating", "for", "dinner"]) # => ["eating", "dinner"]
puts
print select_long_words(["keep", "coding"])                               # => ["coding"]
puts

# Fizz Buzz
def fizz_buzz(max)
	i = 1
  fizzbuzz = []
  while i < max
    if (i % 4 == 0 || i % 6 == 0) && !(i % 4 == 0 && i % 6 == 0)
      fizzbuzz << i
    end
    i += 1
  end
  return fizzbuzz
end

print fizz_buzz(20) # => [4, 6, 8, 16, 18]
puts
print fizz_buzz(15) # => [4, 6, 8]
puts