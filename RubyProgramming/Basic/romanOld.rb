def display_roman_numeral num,array
	num_string = '' #this is the return string
	#array[0], 1
	#array[1], 5
	#array[2], 10
	if num < 0 || num >9
		num_string = 'sorry, invalid number~'
		return num_string
	end
	if num == 1 
		num_string = array[0]	
	elsif num == 5
		num_string = array[1]
	#elsif num == 9
	#	num_string = array[0] + array[2]
	#elsif num == 4
	#	num_string = array[1] + array[0]
	elsif num < 5
		num_string = array[0] * num
	elsif num > 5
		num_string = array[1] + array[0] * (num - 5) 
	end
	num_string
end

=begin testing
num = ''
while num != 'exit'
puts 'Enter number that you wanna convert to roman number'
num = gets.chomp

display = display_roman_numeral num.to_i, ['I','V','X']
puts display
end


num = ''
while num != 'exit'
puts 'Enter number that you wanna convert to roman number'
num = gets.chomp

display = display_roman_numeral num.to_i, ['X','L','C']
puts display
end
=end

def old_roman_numeral number

	num_string = ''	#this is what we return.

	ones = ['I','V','X']

	tens = ['X', 'L','C']

	hundreds = ['C', 'D', 'M']

	thousands = ['M']

	if number < 0 || number >3000
		puts 'Please enter a number between 1 and 3000.'
		return
	else

		left = number
		write = left/1000
		left = left - write * 1000

		if write > 0
			num_string = num_string + display_roman_numeral(write,thousands) 
		end

		write = left/100
		left = left - write * 100

		if write > 0
			num_string = num_string + display_roman_numeral(write,hundreds) 
		end

		write = left/10
		left = left - write * 10

		if write > 0
			num_string = num_string + display_roman_numeral(write,tens) 
		end

		write = left/1
		left = left - write * 1

		if write > 0
			num_string = num_string + display_roman_numeral(write,ones) 
		end


	end
	num_string
end

num = ''
num_string = ''
while num != 'exit'
	puts 'Enter number that you wanna convert to roman number'
	num = gets.chomp

	num_string = old_roman_numeral num.to_i
	puts num_string
end