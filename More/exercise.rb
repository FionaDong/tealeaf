#1. check if "lab" exists

def check(word)
	if word =~ /lab/
		puts word
	else
		puts "no match"
	end	
end

check("laboratory")
check("experiment")
check("Pans Labyrinth")
check("elaborate")
check("polar bear")

#2. result and return

def execute(&block)
	block.call
end

execute{puts "Hello from inside the execute method!"}