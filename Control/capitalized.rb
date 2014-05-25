
def capitalize(name)
	if name.length > 10
		name.upcase
	else 
		"we need string more than 10 characters."
	end
end

puts capitalize("uutupolitics")
puts capitalize("uut")