#Examples in chapter 8
arraylist = [1,'98','fiona',2.56,true]

puts arraylist
puts
puts arraylist.join('+')

arraylist.push('what does a fox say? heiehiehiehiehieeieheieh')
arraylist.push(8**5)

puts arraylist.last
puts arraylist.first
puts arraylist.pop
puts arraylist.last
puts arraylist.length

#8.3 A Few Things To Try
# => Sorting
array = []
is_it_end = ' '
while is_it_end != ''
	is_it_end = gets.chomp
	array.push(is_it_end)
end
 
puts array.sort

puts "Sort again"
# => Another sorting
i = 0
j = 0
while i < array.length
	j = i + 1
	while i < j and j < array.length
		if array[i] > array[j]
			temp = array[j]
			array[j] = array[i] 
			array[i] = temp
		end
		j = j + 1
	end
	i = i + 1

end

puts array


