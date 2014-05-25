Dir.chdir '/Users/Fiona/Documents'

filenames = Dir['/Users/Fiona/Downloads/I*.{JPG,jpg}']

name = 'Wallpaper'
pictureNumber = 1
puts "Downloading #{filenames.length} files."

filenames.each do |na|
	print "."
	
	newName = if pictureNumber < 10
		"#{name}0#{pictureNumber}.JPG"
	else
		"#{name}#{pictureNumber}.JPG"
	end
	if File.exist? newName
		puts 'no way'
		puts newName + 'file already exists in the folder'
		exit 
	end
	File.rename na, newName

	pictureNumber = pictureNumber + 1		
end


=begin
filenames.each do |name|
	name 
end
=end