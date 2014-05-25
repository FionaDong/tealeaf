#1. Add two string together
puts "Fiona" + "Dong"

#2. Find the thousands number, the hundreds, the tens, the ones
puts 8765/1000

puts 8765%1000/100

puts 8765%1000%100/10

puts 8765%1000%100%10

#3. Movie title and the year they came out using Hash
movie = {:Hesia => 1975, :"2046" => 2004, :CZ12 => 2013, :CrouchingTiger => 2001, :LegendOfTianYunMountain =>1981}
puts movie[:Hesia]
puts movie[:"2046"]
puts movie[:CZ12]
puts movie[:CrouchingTiger]
puts movie[:LegendOfTianYunMountain]

#4. Years using Array
years = [1975, 2004, 2013, 2001, 1981]
years[0]
years[1]
years[2]
years[3]
years[4]

#5. Factorial 
puts 5 * 4 * 3 * 2 * 1
puts 6 * 5 * 4 * 3 * 2 * 1
puts 7 * 6 * 5 * 4 * 3 * 2 * 1
puts 8 * 7 * 6 * 5 * 4 * 3 * 2 * 1

#6. Squares
puts 5.1 * 5.1
puts 3.0 * 3.0
puts 1.5 * 1.5

#7. Error message
error occured at row 2, missed a closing curly brace, might mistake parenthese for curly brace.