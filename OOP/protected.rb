class A
	def a_public
		puts "this is a's public method."
		self.a_protected
		self.a_private
	end

private

	def a_private
		puts "this is a's private method."
	end

protected

	def a_protected
		puts "this is a's protected method."		
	end	
end

class B < A
	def b_public
		self.a_protected
	end

end

class C < B
	def c_public
		a_private
	end
end

b = B.new
b.b_public

# c = C.new
# c.c_public