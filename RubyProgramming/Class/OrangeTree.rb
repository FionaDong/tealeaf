class OrangeTree

	def initialize name
		@name = name
		@height = 1
		@fruitCount = 0
		@year = 0
		puts 'Orange tree ' + @name + ' is planted.'
	end
	def getPorfile
		'Name: ' +@name + ' ' + @year.to_s + ' years old, ' + @height.to_s + ' meters high.'
	end
	def oneYearPasses
		passageOfTime
		puts 'one year has passed.'
	end
	def countTheOranges
		puts 'there are ' + @fruitCount.to_s + ' oranges on the tree.'
	end
	def pickAnOrange
		@fruitCount = @fruitCount - 1 
		puts @fruitCount.to_s + ' oranges left on the tree.'
	end
	private
	def growOld?
		@year > 10
	end
	
	def fruit?
		@year > 2
	end

	def passageOfTime 
		@year = @year + 1
		@height = @height + 3

		if growOld?
			puts 'The tree will die because of too old.'
		elsif fruit?
			@fruitCount = 10 * @year
		end
	end
end

tree = OrangeTree.new 'little bruce'
puts tree.getPorfile
tree.countTheOranges

tree.oneYearPasses
puts tree.getPorfile
tree.countTheOranges

tree.oneYearPasses
puts tree.getPorfile
tree.countTheOranges

tree.oneYearPasses
puts tree.getPorfile
tree.countTheOranges

tree.pickAnOrange
tree.countTheOranges

tree.oneYearPasses
tree.countTheOranges