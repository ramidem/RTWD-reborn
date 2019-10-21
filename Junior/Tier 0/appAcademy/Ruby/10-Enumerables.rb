# Array Enumerables
#  array
#   .each
#   .each_with_index
#  string
#   .each_char
#   .each_char.with_index

months = ["Jan", "Feb", "Mar", "Apr"]

months.each { |month| p month }

months.each do |month|
  puts month
  # puts "---"
end

months.each_with_index do |month, i|
  print month, i
  # puts i
end

sept = "september"

sept.each_char do |char|
  puts char
end

sept.each_char.with_index do |char, i|
  puts char
  puts i
  puts "---"
end

# Range Enumerable
#   (start..end).each - iterate from start to end (inclusive)
#   (start...end).each - iterate from start to end (excluding end)

months.each { |month| puts month}

[1, 2, 3, 4, 5].each { |num| puts num }
(1..10).each { |num| puts num }
(1...10).each { |num| puts num }

puts "---"

# FizzBuzz!
def fizzBuzz(max)
  arr = []

  (1...max).each do |num|
    if num % 3 == 0 && num % 5 != 0
      arr << num
    end

    if num % 3 != 0 && num % 5 == 0
      arr << num
    end

    # puts num
  end

  return arr
end

print fizzBuzz(19)
puts
puts "---"

# Nested Loops
(1..3).each do |num|
  puts num

  (1..5).each do |num2|
    puts "  " + num2.to_s
  end
end

puts "---"

months.each do |month|
  # puts month
  months.each do |month2|
    puts month + month2
  end
end

puts "---"

months.each_with_index do |month, index1|
  months.each_with_index do |month2, index2|
    if index2 > index1
      puts month + month2
    end
  end
end

puts "---"

# 2 Dimensional Arrays
arr = [
  ["a", "b", "c"],
  ["d", "e"],
  ["f", "g", "h"]
]

print arr
puts

print arr[0][0]
puts

arr.each do |subArr|
  print subArr
  puts
  subArr.each do |el|
    puts el
  end
end

puts "---"

# To Initials
def to_initials(name)
  parts = name.split(" ")
  initials = ""
  parts.each { |part| initials += part[0] }
  return initials
end

puts to_initials("Kelvin Bridges")      # => "KB"
puts to_initials("Michaela Yamamoto")   # => "MY"
puts to_initials("Mary La Grange")      # => "MLG"

puts "---"

# First In Array
def first_in_array(arr, el1, el2)
  if arr.index(el1) < arr.index(el2)
    return el1
  else
    return el2
  end
end

puts first_in_array(["a", "b", "c", "d"], "d", "b"); # => "b"
puts first_in_array(["cat", "bird" ,"dog", "mouse" ], "dog", "mouse"); # => "dog"

puts "---"

# Abreviate Sentence
def abbreviate_sentence(sent)
  words = sent.split(" ")
  new_words = []

  words.each do |word|
    if word.length > 4
      new_word = abbreviate_word(word)
      new_words << new_word
    else
      new_words << word
    end
  end

  new_sent = new_words.join(" ")
end

def abbreviate_word(word)
  vowels = "aeiou"
  no_vowels = ""

  word.each_char do |char|
    if !vowels.include?(char)
      no_vowels += char
    end
  end

  return no_vowels
end

puts abbreviate_sentence("follow the yellow brick road") # => "fllw the yllw brck road"
puts abbreviate_sentence("what a wonderful life")        # => "what a wndrfl life"

puts "---"

# Format Name
# Hint: use str.upcase and str.downcase
# "abc".upcase # => "ABC"

def format_name(str)
  parts = str.split(" ")
  new_parts = []

  parts.each do |part|
    new_parts << part[0].upcase + part[1..-1].downcase
  end

  return new_parts.join(" ")

end

puts format_name("chase WILSON") # => "Chase Wilson"
puts format_name("brian CrAwFoRd scoTT") # => "Brian Crawford Scott"

puts "---"

# Is Valid Name
# A name is valid is if satisfies all of the following:
# - contains at least a first name and last name, separated by spaces
# - each part of the name should be capitalized
#
# Hint: use str.upcase or str.downcase
# "a".upcase # => "A"

def is_valid_name(str)
  parts = str.split(" ")

  if parts.length < 2
    return false
  end

  parts.each do |part|
    if !is_capitalized(part)
      return false
    end
  end

  return true
end

def is_capitalized(word)
  if word[0] == word[0].upcase && word[1..-1] == word[1..-1].downcase
    return true
  else
    return false
  end
end

puts is_valid_name("Kush Patel")       # => true
puts is_valid_name("Daniel")           # => false
puts is_valid_name("Robert Downey Jr") # => true
puts is_valid_name("ROBERT DOWNEY JR") # => false

puts "---"

# Is Valid Email
# For simplicity, we'll consider an email valid when it satisfies all of the following:
# - contains exactly one @ symbol
# - contains only lowercase alphabetic letters before the @
# - contains exactly one . after the @

def is_valid_email(str)
  parts = str.split("@")
  
  if parts.length != 2
    return false
  end
  
  left = parts[0]
  right = parts[1]
  alphabets = "abcdefghijklmnopqrstuvwxyz"

  left.each_char do |char|
    if !alphabets.include?(char)
      return false
    end
  end

  if right.split(".").length == 2
    return true
  else
    return false
  end

end

puts is_valid_email("abc@xy.z")         # => true
puts is_valid_email("jdoe@gmail.com")   # => true
puts is_valid_email("jdoe@g@mail.com")  # => false
puts is_valid_email("jdoe42@gmail.com") # => false
puts is_valid_email("jdoegmail.com")    # => false
puts is_valid_email("az@email")         # => false

puts "---"

# Array Translate
def array_translate(array)
  new_str = ""

  i = 0
  while i < array.length
    el = array[i]
    num = array[i + 1]

    num.times { new_str += el } # or new_str += el * num

    i += 2
  end

  return new_str
end

print array_translate(["Cat", 2, "Dog", 3, "Mouse", 1]); # => "CatCatDogDogDogMouse"
puts

print array_translate(["red", 3, "blue", 1]); # => "redredredblue"
puts

puts "---"

# Reverse Words
def reverse_words(sent)
  words = sent.split(" ")

  new_words = []
  
  words.each { |word| new_words << word.reverse }
  
  return new_words.join(" ")
end

puts reverse_words('keep coding') # => 'peek gnidoc'
puts reverse_words('simplicity is prerequisite for reliability') # => 'yticilpmis si etisiuqererp rof ytilibailer'

puts "---"

# Rotate Array
def rotate_array(arr, num)
  num.times do 
    el = arr.pop
    arr.unshift(el)
  end

  return arr
end

print rotate_array([ "Matt", "Danny", "Mashu", "Matthias" ], 1) # => [ "Matthias", "Matt", "Danny", "Mashu" ]
puts

print rotate_array([ "a", "b", "c", "d" ], 2) # => [ "c", "d", "a", "b" ]
puts

puts "---"

# Pig Latin Word
# Pig latin translation uses the following rules:
# - for words that start with a vowel, add 'yay' to the end
# - for words that start with a nonvowel, move all letters before the first vowel to the end of the word and add 'ay'

def pig_latin_word(word)
  vowels = "aeiou"

  if vowels.include?(word[0])
    return word + "yay"
  end

  word.each_char.with_index do |char, index|
    if vowels.include?(char)
      before_vowel = word[0...index]
      after_vowel = word[index..-1]

      return after_vowel + before_vowel + "ay"
    end
  end
end

puts pig_latin_word("apple")   # => "appleyay"
puts pig_latin_word("eat")     # => "eatyay"
puts pig_latin_word("banana")  # => "ananabay"
puts pig_latin_word("trash")   # => "ashtray"

puts "---"

# Combinations
def combinations(arr)
  pairs = []

  arr.each_with_index do |ele1, idx1|
    arr.each_with_index do |ele2, idx2|
      if idx2 > idx1
        pairs << [ ele1, ele2 ]
      end
    end
  end

  return pairs
end

print combinations(["a", "b", "c"]); # => [ [ "a", "b" ], [ "a", "c" ], [ "b", "c" ] ]
puts

print combinations([0, 1, 2, 3]); # => [ [ 0, 1 ], [ 0, 2 ], [ 0, 3 ], [ 1, 2 ], [ 1, 3 ], [ 2, 3 ] ]
puts

puts "---"

# Opposite Count
def opposite_count(nums)
  count = 0

  nums.each_with_index do |num1, idx1|
    nums.each_with_index do |num2, idx2|
      if num1 + num2 == 0 && idx2 > idx1
        count += 1
      end
    end
  end

  return count
end

puts opposite_count([ 2, 5, 11, -5, -2, 7 ]) # => 2
puts opposite_count([ 21, -23, 24 -12, 23 ]) # => 1

puts "---"

# Two D Sum
def two_d_sum(arr)
  total = 0

  arr.each do |sub_array|
    sub_array.each do |num|
      total += num
    end
  end

  return total
end

array_1 = [
  [4, 5],
  [1, 3, 7, 1]
]
puts two_d_sum(array_1)    # => 21

array_2 = [
  [3, 3],
  [2],
  [2, 5]
]
puts two_d_sum(array_2)    # => 15

puts "---"

# Two D Translate
def two_d_translate(arr)
  new_arr = []

  arr.each do |subArray|
    ele = subArray[0]
    num = subArray[1]

    num.times { new_arr << ele }
  end

  return new_arr
end

arr_1 = [
  ['boot', 3],
  ['camp', 2],
  ['program', 0]
]

print two_d_translate(arr_1) # => [ 'boot', 'boot', 'boot', 'camp', 'camp' ]
puts

arr_2 = [
  ['red', 1],
  ['blue', 4]
]

print two_d_translate(arr_2) # => [ 'red', 'blue', 'blue', 'blue', 'blue' ]
puts