list = [7,6,5,4,3]

def each_with_index(list)
	x = 0
	list.each do |a|
		puts "#{x}.#{a}"
		x += 1 
	end
end

each_with_index(list)