
def fifty_if(number)
	if number < 0 
	  puts "#{number} is a negative number."
	elsif number > 100 
		puts "#{number} is above 100."
	elsif number <= 50
		puts "#{number} is between 0 and 50."
	elsif number > 50
		puts "#{number} is between 50 and 100."
	end
end

def fifty_case1(number)
	n = number/50
	if number < 0
		puts "#{number} is a negative number."
	else
		case n
		  when 0
				puts "#{number} is between 0 and 50."
			when 1
				puts "#{number} is between 50 and 100."
			else
				puts "#{number} is above 100."
			end 	 					
		end
end		

def fifty_case2(number)
	case
	when number < 0 
		puts "#{number} is a negative number."
	when number <= 50
		puts "#{number} is between 0 and 50."
	when number <= 100
		puts "#{number} is between 50 and 100."
	else
		puts "#{number} is above 100."
	end		
end


puts "Please enter a number."
number = gets.chomp.to_i
fifty_case2(number)
#fifty_if(number)