# Array Methods

# `<<` adds an element to the end of an array, evaluates to an array.

arr = ["vans", "dc", "nike"]

print arr
puts

arr << "adidas"

print arr
puts

# array.push adds element/s to the end of the array, evaluates to the array
arr.push("lacoste")

print arr
puts

# array.pop removes the last element of an array, evaluates to the element
# that was removed
p arr.pop()
# puts
print arr
puts

# array.unshif adds an element to the front of an array,
# evaluates to the array
print arr.unshift("under armour")
puts

# array.shift removes the first element of an array,
# evaluates to the element that as removed
print arr.shift
puts
print arr
puts

# Index and Include Methods
# array/string.index(el) - evaluates to the index where el is found
# array/string.include?(el) - evaluates to a boolean indicating if el is found

states = ["SF", "NY", "LA"]
puts states.index("NY")
puts states.index("MN")

puts states.include?("LA")
puts arr.include?("PA")

str = "hello World!"
puts str.include?("w") # false - case sensitive
puts str.include?("W") # true - case sensitive

puts str.index("W")

# Reverse Method
# array/string.reverse, evaluates to a new reversed version of the array or string
# array/string.reverse!, reverses an array/string in place
print arr
puts
print arr.reverse # or assign to an array
puts

states.reverse!
print states
puts
puts str.reverse
puts

# array/string slicing
#   array[start..end] - grabs elements from start to end (inclusive)
#   array[start...end] - grabs elements from start to end (excluding the element at end)
print arr
puts
print arr[1]
puts
print arr[0..2]
puts
print arr[0...3]
puts

boot = "bootcamp"
print boot[3..-1]
puts
print boot[5..-1]
puts
print boot[-2]
puts

# Split and Join
# string.split evaluates to an array
# array.join evaluates to a string

ol_town = "Yeah, I'm gonna take my horse to the old town road"
print ol_town.split(" ")
puts
ol_town_arr = ol_town.split(" ")
print ol_town_arr
puts
print ol_town_arr.join(" ")
puts
p ol_town_arr.join(" ")
puts
