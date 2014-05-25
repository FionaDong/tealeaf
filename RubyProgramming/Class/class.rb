
time = Time.new
puts time.class
puts time
puts time + 60

puts Time.local(2000,1,1)
puts Time.gm(1983,9,23,8,32)
puts
puts (Time.gm(1983,9,23,8,32) - Time.new)/(60*60*24*365)

puts Time.gm(1969,12,31)
time = 0

puts Time.gm(1983,9,23) - Time.gm(1970,1,1)
puts Time.gm(1983,9,23) + 1000000000
puts Time.mktime(1983,9,23)

puts "which year were you born?"
year = gets.chomp
puts "which month were you born?"
month = gets.chomp
puts "which day were you born?"
day = gets.chomp
puts "your birthday is " + Time.gm(year,month,day).to_s

#puts (Time.now - Time.gm(Time.now.year,month,day)).abs

while 1==1 do 
	if (Time.now - Time.gm(Time.now.year,month,day)).abs < 24*60*60
		puts "Happy Birthday"
		break
	end
end




