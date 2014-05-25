#5.6 A Few Things To Try
puts 'What\'s your first name?'
first_name = gets.chomp

puts 'What\'s your middle name?'
middle_name = gets.chomp

puts 'What\'s your last name?'
last_name = gets.chomp

puts 'Welcome~' + first_name + ' ' + middle_name + ' ' + last_name

puts'*****'

puts 'What\'s your favorite number?'
favorite = gets.chomp
suggestion = favorite + 1
puts 'I don\'t think so, it should be ' + suggestion