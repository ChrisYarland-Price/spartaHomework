def run
	quit = ""
	until quit === "YES" || quit === "Y"
		quit = setup
	end
end
def setup
	puts "Welcome to the Calculator please enter your desired function 
(A)ddition, (S)ubtraction, (M)ultiplication, (D)ivision, (P)ower of,
(Sq)uare root of, (B)mi, (T)rip calculater."
	desired_function = gets.chomp
	desired_function.upcase!
	result = choice(desired_function)
	puts "Would you like to quit"
	gets.chomp.upcase!
end
def choice(user_input)
	case user_input
		when "A"
			puts calculate(:+)
		when "S"
			puts calculate(:-)
		when "M"
			puts calculate(:*)
		when "D"
			puts calculate(:/)
		when "P"
			puts calculate(:**)
		when "SQ"
			puts square_root
		when "B"
			puts choose
		when "T"
			puts trip
		else
			puts "this is not valid"
	end	
end
def numbers_input
	puts "Please enter your values seperated by a space" 
	val = gets.chomp
	val.split(' ').map(&:to_f)
end
def calculate(operator)
	numbers_array = numbers_input
	if(numbers_array.length <= 2 && operator === :**)
		numbers_array.push(2)
		result = numbers_array.reduce(operator)
	elsif numbers_array.length < 2 
		puts "I'm sorry that is not possible"
	else
		result = numbers_array.reduce(operator)
	end
end
def square_root
	val1 = gets.chomp.to_f
	puts Math.sqrt(val1)
end
def choose
	puts "please choose imperial or metric"
	option = gets.chomp
	bmi(option)
end
def bmi(choice)
	puts "Please enter Height in feet or metres, weight in pounds or kilos"
	user = gets.chomp
	# puts user
	print user.split(' ').map(&:to_f)
	print user[0].class
	# puts user
	if choice === "imperial"
		user[0] = (user[0] / 3.2808).map(&:to_f)
		user[1] = (user[1] * 0.45359237).map(&:to_f)
		puts user
		calculate_bmi(user)
	elsif choice === "metric"
		calculate_bmi(user)
	else
		"This is not a valid input"
	end
end
def calculate_bmi(values)
	print values.split(' ').map(&:to_f)
	puts values.length
	values[1] / (values[0] ** 2)
end


run