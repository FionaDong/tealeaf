
colorArray = Array.new
#colorHash = {}
colorHash = Hash.new
colorArray[0] = "red"
colorArray[1] = "green"
colorArray[2] = "yellow"
colorHash['foreground'] = "red"
colorHash['background'] = "yellow"
colorHash['decoration'] = "green"

#puts colorHash
#puts colorArray
#puts

colorArray.each do |color|
	puts color
	
end


colorHash.each do |type, color|
	puts type + ":" + color
	
end
