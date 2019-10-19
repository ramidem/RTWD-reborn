# Loops

# While Loop
def repeat_hello(times)
  counter = 0
  while counter < times
    puts "hello!"
    counter += 1
  end
end

repeat_hello(3)

def print_nums
  i = 0
  while i < 4
    puts i
    i += 1
  end
end

print_nums

def count_down
  i = 10
  while i >= 0
    puts i
    i -= 1
  end
end

count_down

def min_max(min, max)
  i = min
  while i <= max
    puts i
    i += 1
  end
end

min_max(2,4)
min_max(10, 15)

# break - immediately exit the loop
# next - skips to the next iteration

# Count E
def count_e(word)
	i = 0 # iteration
  eee = "" # track e
  while i < word.length
    if word[i] == "e"
      eee += word[i]
    end
    i += 1 # increment by 1
  end
  return eee.length # return count of e
end

puts count_e("movie") # => 1
puts count_e("excellent") # => 3

def count_a(word)
	i = 0
	aaa = ""
  while i < word.length
    if word[i] == "a" || word[i] == "A"
      aaa += word[i]
    end
    i += 1
  end
  
  return aaa.length
end

puts count_a("application")  # => 2
puts count_a("bike")         # => 0
puts count_a("Arthur")       # => 1
puts count_a("Aardvark")     # => 3

def count_vowels(word)
	i = 0
  	count = 0
  	while i < word.length
      char = word[i]
      
      if char == "a" || char == "e" || char == "i" || char == "o" || char == "u"
      	count += 1
      end
      i += 1
    end
  	return count
end

puts count_vowels("bootcamp")  # => 3
puts count_vowels("apple")     # => 2
puts count_vowels("pizza")     # => 2

def sum_nums(max)
	i = 1
  sum = 0
  while i <= max
    sum += i
    i += 1
  end
  return sum
end

puts sum_nums(4) # => 10, because 1 + 2 + 3 + 4 = 10
puts sum_nums(5) # => 15

def factorial(num)
	i = 1
  factorial = 1
  while i <= num
    factorial *= i
    i += 1
  end
  
  return factorial
end

puts factorial(3) # => 6, because 1 * 2 * 3 = 6
puts factorial(5) # => 120, because 1 * 2 * 3 * 4 * 5 = 120

def reverse(word)
  	d = word.length - 1
  	rev = ""
	while d >= 0
      rev += word[d]
      # puts d
      # puts word[d]
      d -= 1
    end
    return rev
end

puts reverse("cat")          # => "tac"
puts reverse("programming")  # => "gnimmargorp"
puts reverse("bootcamp")     # => "pmactoob"

def is_palindrome(word)
	rev = ""
  i = 0
  while i < word.length
    char = word[i]
    rev = char + rev
    i += 1
  end
  return rev == word
end

puts is_palindrome("racecar")  # => true
puts is_palindrome("kayak")    # => true
puts is_palindrome("bootcamp") # => false