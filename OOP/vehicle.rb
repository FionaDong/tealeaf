module Swimmable
	def can_swim?(depth)
		depth < 10 ? true : false
	end
end


class Vehicle

	attr_accessor :speed,:miles,:color,:gallons
	attr_reader :year, :model
	@@count = 0

	def initialize(year, color, model)
		@year = year
		@color = color
		@model = model
		@speed = 0
		@miles = 10
		@gallons = 100
		@@count += 1
	end
	
	def age
		"It is #{years_old} years old."
	end

	def self.number_of_vehicles 
		puts "There are #{@@count} new created."
	end

	def self.gas_mileage(miles, gallons)
		puts "#{gallons/miles} miles per gallons."
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

private

	def years_old
			Time.now.year - self.year.to_i
	end
end


class MyCar < Vehicle
	include Swimmable

	SUN_ROOF = 'crystal'

end

class MyTruck < Vehicle

	SUN_ROOF = "glass"

end

car = MyCar.new('1990','red','benz')
truck = MyTruck.new('2014','white','Jiefang')

car.can_swim?(9)
truck.speed_up(3)
truck.brake(5)
car.spray_paint("pink")
puts car.age

# puts "-------MyCar-------"
# puts MyCar.ancestors
# puts "-------MyTruck-------"
# puts MyTruck.ancestors
# puts "-------Vehicle-------"
# puts Vehicle.ancestors
# puts "-------Swimmable-------"
# puts Swimmable.ancestors

