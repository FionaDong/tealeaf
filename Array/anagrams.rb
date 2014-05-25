words = ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live', 'fowl', 'veil' ,'wolf', 'diet', 'vile', 'edit', 'tide', 'flow', 'neon']

# for each in words do |elm|
# 	words.delete(elm)
# 	for each in words do |word|

# 	end
	
# end

words_hash = {}

words.each do |word|
	key= word.split('').sort.join
	if words_hash.has_key?(key)
		words_hash[key].push(word)
	else
		words_hash[key] = [word]
	end
end

words_hash.each do |k,v|
	puts "#{v}"
end
