#Exercise in Method
#1. greeting

def greeting(name)
	puts "Hello, " + name
end

#2. what do following expression evaluate to?
p x = 2 #2
p puts x = 2 ######nil
p name = "Joe" #Joe
p four = "four" #four
p print something = "nothing" ######nil

#3. multiply

def multiply(number1, number2)
	number1 * number2
end

#4. what will following print to screen? nothing 

def scream(words)
	words = words + "!!!!"
	return
	puts words
end

#5. Modify method #4, it returns nil
def scream(words)
	words = words + "!!!!"
	puts words
end

#6. you didn't provide enough parameter to method calculate_product.