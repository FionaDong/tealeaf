
class MyCar
	attr_accessor :color,:speed,:miles,:gallons
	attr_reader :year, :model

	def gas_mileage(miles, gallons)
		puts "#{gallons/miles} miles per gallons."
	end

	def initialize(year, color, model)
		@year = year
		@color = color
		@model = model
		@speed = 0
		@miles = 10
		@gallons = 100
	end

	def speed_up(num)
		self.speed += num
	end

	def brake(num)
		self.speed -= num
	end

	def shut_off
		self.speed = 0
	end

	def spray_paint(color)
		self.color = color
	end

	def to_s
		"Your car is a #{color} #{model} in #{year}."
	end
end


car = MyCar.new('2014','red','mini copper')
car.gas_mileage(13,351)
puts car

puts MyCar.ancestors
# puts car.speed_up(25)
# puts car.brake(23)
# puts car.shut_off
