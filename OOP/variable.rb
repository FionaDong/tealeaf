class A
attr_accessor :name,:habitat,:food
@@class_variable = 0

def initialize(name,habitat,food)
	@name = name
	@habitat = habitat
	@food = food
	@@class_variable += 1
end

def self.number_of_new
	puts "There are #{@@class_variable}"
end

end 

class B < A

def to_s
	"it is a #{name} living in #{habitat} and eat #{food}."
end

end

b1 = B.new("dog","backyard","cats")
b2 = B.new("rabbit","holes","carrot")

# puts b1.name
puts b2

# A.number_of_new