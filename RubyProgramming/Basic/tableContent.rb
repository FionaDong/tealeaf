#8.3 A Few Things To Try
# => Table of content
content = []

while content.length < 10
	content.push(gets.chomp)
end
#First Try
i = 0
while i < 10
	if content[i] == 'Table of Content'
		puts content[i].center(40)
	elsif content[i][0..6] == 'Chapter' +':'
			print content[i].rjust(10)
	elsif content[i][0..3] == 'page'
		puts content[i].rjust(10)
	else
		print content[i].rjust(10)
	end

	i = i + 1
end

#Second Try
content.each do |temp|
	if temp == 'Table of Content'
		puts temp.center(40)
	elsif temp[0..6] == 'Chapter' +':'
			print temp.rjust(10)
	elsif temp[0..3] == 'page'
		puts temp.rjust(10)
	else
		print temp.rjust(10)
	end
	
end
