poke = []

while poke.length < 5
	poke.push(gets.chomp)
end
puts '-----------'

puts poke.shuffle

#Shuffle testing
class Array 

	def shuffle
	arr = self
	# Now we can just copy the old shuffle method.
	shuf = []
	while arr.length > 0
		# Randomly pick one element of the array. 
		rand_index = rand(arr.length)
		# Now go through each item in the array,
		# putting them all into new_arr except for # the randomly chosen one, which goes into # shuf.
		curr_index = 0
		new_arr = []

		arr.each do |item|
			if curr_index == rand_index
				shuf.push item
			else
				new_arr.push item
			end
				curr_index = curr_index + 1
		end
		# Replace the original array with the new, # smaller array.
		arr = new_arr
	end
	￼￼shuf
	end 
	
end