# `print` is the simplest method used to print data.
# It will do minimal formatting and not even add a new
# line at the end of the print:

print "hello"
print "world"
# helloworld

# add new line
print "\nhello\n"
print "\tworld\n"
# hello
#   world

# `puts` also prints data to the screen, but with some
# formatting, including adding an automatic new line after
# every puts

puts "hello"
puts "world"
# hello
# world

# `p` prints data to the screen with a new line but also
# gives information on type of data that was printed

p "hello"
p "world"
p "42"
p 42
# "hello"
# "world"
# "42"
# 42

# String Operations Lecture
puts "Hello".length # 5
puts "Hello"[0] # H
puts "H" + "ello" # Hello

# Iterating Through Strings with Loops

str = "hello"
puts str

def printChars(word)
  i = 0
  while i < word.length
    puts word[i]
    i += 1
  end
end

printChars("racecar")