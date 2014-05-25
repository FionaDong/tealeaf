#7.5 A Few Things To Try
# => 99 bottles of beer on the wall
i = 99
while i >0
#lyrics
puts i.to_s + ' bottles of beer on the wall,'
puts i.to_s + ' bottles of beer, take one down, pass it around'
i = i - 1
end 

# => Deaf grandma 
what_grandma_say = gets.chomp

while what_grandma_say != 'BYE'
	if what_grandma_say == what_grandma_say.upcase
		puts 'NO, NOT SINCE' + rand(1930..1950).to_s
	else	
		puts 'HUH?! SPEAK UP, SONNY!'
	end
	what_grandma_say = gets.chomp	
end

puts
# => Deaf grandma extended

i = 1
what_grandma_say_previous = ''

while i < 3
	what_grandma_say = gets.chomp	

	if what_grandma_say == 'BYE' and what_grandma_say_previous != what_grandma_say
		i = 1
	end
	
	if what_grandma_say == 'BYE' and what_grandma_say_previous == what_grandma_say
		i = i +1
	end

	what_grandma_say_previous = what_grandma_say

	if what_grandma_say == what_grandma_say.upcase and what_grandma_say != 'BYE'
		puts 'NO, NOT SINCE' + rand(1930..1950).to_s
	else 
		if what_grandma_say !='BYE'
		puts 'HUH?! SPEAK UP, SONNY!'
		end
	end

end

# => Leap year

puts 'Please keyin start year.'
start_year = gets.chomp.to_i
puts 'Please keyin end year.'
end_year = gets.chomp.to_i

while start_year < end_year
	if start_year % 4 == 0 and start_year % 100 != 0
		puts 'leap year is ' + start_year.to_s
	end
	if start_year % 100 == 0	
		if start_year % 400 == 0
			puts 'leap year is ' + start_year.to_s
		end
	end
	start_year = start_year + 1
end

