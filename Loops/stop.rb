puts "Please enter action name."

while action = gets.chomp
	if action.upcase == "STOP"
		break
	else
		puts action
	end
end 