# Learn Python: Syntax
- Comments
	# This is a comment
- Print
	print("hello world!")
- Strings
	print("This is a string")
	print('Here is another string')
- Variables
	name = "Med"
	print(name)
- Errors
	SyntaxError - something's wrong with the syntax
	NameError - something's wrong with the variable
- Numbers
	an_int = 1
	a_float = 2.1
- Calculations
	print(573 - 74 + 1)
	print(25 * 2)
	print(10 / 5)
	print(25 * 68 + 13 / 28)
- Changing Numbers
	quilt_width = 8
	quilt_length = 8
	print(quilt_width * quilt_length)
- Exponents
	Calculation of squares for:
	6x6 quilt
	print(6 ** 2)
	7x7 quilt
	print(7 ** 2)
	8x8 quilt
	print(8 ** 2)
	How many squares for 6 people to have 6 quilts each that are 6x6?
	print((6 ** 3) * 6)
- Modulo
	my_team = 27 % 4
	print(my_team)

	one = 26 % 4
	two = 28 % 4

	print(one)
	print(two)
- Concatenation
	msg1 = "Hello "
	msg2 = "World!"
	message = msg1 + msg2
	print(message)
- Plus Equals
	total_price = 0
	new_sneakers = 50.00
	total_price += new_sneakers
	print(total_price)
- Multi-line Strings
	multi_line = """
		This is 
		multi-line
		string
	"""
	print(multi_line)
- Review
	my_age = 28
	half_my_age = my_age / 2
	greeting = "hello"
	name = "Med"
	greeting_with_name = greeting + ". I am " + name + "."
	print(greeting_with_name + " " + str(my_age) + " years old")
