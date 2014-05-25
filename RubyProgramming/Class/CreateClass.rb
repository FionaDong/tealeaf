class Die
	def initialize
		@numberShowing = 5
	end
	def roll
		@numberShowing = 1 + rand(6)
	end
	def showing
		@numberShowing
	end
end
# only 2 dice here
dice = [Die.new,Die.new]




dice.each do |die|
	
	puts die.showing
	
end
