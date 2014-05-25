require 'yaml'
filename = 'ListerQuote.txt'
=begin
test_array = ['une fille','la femme','le garcon']
test_string = test_array.to_yaml
puts test_string
puts

File.open filename,'w' do |f|
f.write test_string
end
#File.write filename, test_string
read_string = File.read filename
read_array = YAML::load read_string
puts read_array == test_array
=end

def yaml_save filename,object
	File.open filename,'w' do |f|
		f.write object.to_yaml
	end
end

def yaml_read filename
	result = File.read filename

	resultString = YAML::load result
end

object = 42

yaml_save filename, object
puts (object == (yaml_read filename))

	