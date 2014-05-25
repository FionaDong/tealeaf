#9.5 A Few Things To Try
# => Improved ask method
def ask question
	puts question
	while true
	reply = gets.chomp
	
		if reply == 'yes' || reply == 'no'
			return false
		else
			puts 'Please anwser yes or no.'
		end
	end

end

ask 'do you still wet the bed?'


# => 10.5 A Few Things To Try
def englishNumber number
  if number < 1  
    return 'Please enter a number more than 1 less than 3000.'
  end
  
  #  No more special cases!  No more returns!
  
  numString = ''  #  This is the string we will return.
  
  onesPlace = ['one',     'two',       'three',    'four',     'five',
               'six',     'seven',     'eight',    'nine']
  tensPlace = ['ten',     'twenty',    'thirty',   'forty',    'fifty',
               'sixty',   'seventy',   'eighty',   'ninety']
  teenagers = ['eleven',  'twelve',    'thirteen', 'fourteen', 'fifteen',
               'sixteen', 'seventeen', 'eighteen', 'nineteen']

  left = number
  write = left/1000
  left = left - write*1000
  if write > 0
    thousands = englishNumber write
    numString = numString + thousands + ' thousand and'
    
    if left >0
      numString = numString +' '
    end

  end

               
  
  #  "left" is how much of the number we still have left to write out.
  #  "write" is the part we are writing out right now.
  #  write and left... get it?  :)
  #left  = number
  write = left/100          #  How many hundreds left to write out?
  left  = left - write*100  #  Subtract off those hundreds.
  
  if write > 0
    #  Now here's a really sly trick:
    hundreds  = englishNumber write
    numString = numString + hundreds + ' hundred and'
    #  That's called "recursion".  So what did I just do?
    #  I told this method to call itself, but with "write" instead of
    #  "number".  Remember that "write" is (at the moment) the number of
    #  hundreds we have to write out.  After we add "hundreds" to "numString",
    #  we add the string ' hundred' after it.  So, for example, if
    #  we originally called englishNumber with 1999 (so "number" = 1999),
    #  then at this point "write" would be 19, and "left" would be 99.
    #  The laziest thing to do at this point is to have englishNumber
    #  write out the 'nineteen' for us, then we write out ' hundred',
    #  and then the rest of englishNumber writes out 'ninety-nine'.
    
    if left > 0
      #  So we don't write 'two hundredfifty-one'...
      numString = numString + ' '
    end
  end
  
  write = left/10          #  How many tens left to write out?
  left  = left - write*10  #  Subtract off those tens.
  
  if write > 0
    if ((write == 1) and (left > 0))
      #  Since we can't write "tenty-two" instead of "twelve",
      #  we have to make a special exception for these.
      numString = numString + teenagers[left-1]
      #  The "-1" is because teenagers[3] is 'fourteen', not 'thirteen'.
      
      #  Since we took care of the digit in the ones place already,
      #  we have nothing left to write.
      left = 0
    else
      numString = numString + tensPlace[write-1]
      #  The "-1" is because tensPlace[3] is 'forty', not 'thirty'.
    end
    
    if left > 0
      #  So we don't write 'sixtyfour'...
      numString = numString + '-'
    end
  end
  
  write = left  #  How many ones left to write out?
  left  = 0     #  Subtract off those ones.
  
  if write > 0
    numString = numString + onesPlace[write-1]
    #  The "-1" is because onesPlace[3] is 'four', not 'three'.
  end
  
  #  Now we just return "numString"...
  numString
end

=begin
puts englishNumber -1
puts englishNumber 16
puts englishNumber 8
puts englishNumber 0

puts englishNumber 100
puts englishNumber 89
puts englishNumber 367
puts englishNumber 4778

=end
# => Ninety-nine Bottles of Beer on the Wall.
i = 9999

while i >0
#lyrics
puts englishNumber(i) + ' bottles of beer on the wall,' + englishNumber(i) + ' bottles of beer, take one down, pass it around'.center(20)
i = i - 1
end 

