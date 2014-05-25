#Online chapter9, write my own englishNumber method
def enghlishNumber number 
if number < 0
#pop up warning meg
return
end
if number > 100
#pop up warning meg	
return
end
left = number
write = left/100
left = left - write*100
returnString = ''
if write == 1
#this is one hundred
	return 'one hundred'
else
	write = left/10
	left = left - write*10
	if write == 1
		if left == 1
			#this is eleven
		elsif left == 2
			#this is twelve
		elsif left ==3
			#this is thirteen
		elsif left ==4
			#this is forteen
		elsif left ==5
			#this is fifteen
		elsif left ==6
			#this is sixteen
		elsif left ==7
			#this is seventeen
		elsif left ==8
			#this is eighteen
		elsif left ==9
			#this is nineteen
		elsif left ==0
			# this is ten

		end	
	left = 0		
			
	elsif write ==2
		returnString = returnString + 'twenty'
	elsif write ==3
		returnString = returnString + '30'
	elsif write ==4
		returnString = returnString + '40'	
	elsif write ==5
		returnString = returnString + '50'
	elsif write ==6
		returnString = returnString + '60'
	elsif write ==7
		returnString = returnString + '70'
	elsif write ==8
		returnString = returnString + '80'
	elsif write ==9
		returnString = returnString + '90'
	end
	if left > 0
		returnString = returnString + '-'
	end

	write = left
	left = 0

	if write > 0
		if write ==1
			returnString = returnString + 'one'
		elsif write ==2
			returnString = returnString + 'two'
		elsif write ==3
			returnString = returnString + 'three'	
		elsif write ==4
			returnString = returnString + 'four'	
		elsif write ==5
			returnString = returnString + 'five'
		elsif write ==6
			returnString = returnString + 'six'
		elsif write ==7
			returnString = returnString + 'seven'
		elsif write ==8
			returnString = returnString + 'eight'
		elsif write ==9
			returnString = returnString + 'nine'
		end		
	end
end
		if returnString == ''
			return 'zero'
		end
		returnString
end



=begin

def englishNumber number
  #  We only want numbers from 0-100.
  if number < 0
    return 'Please enter a number zero or greater.'
  end
  if number > 100
    return 'Please enter a number 100 or lesser.'
  end
  
  numString = ''  #  This is the string we will return.
  
  #  "left" is how much of the number we still have left to write out.
  #  "write" is the part we are writing out right now.
  #  write and left... get it?  :)
  left  = number
  write = left/100          #  How many hundreds left to write out?
  left  = left - write*100  #  Subtract off those hundreds.
  
  if write > 0
    return 'one hundred'
  end
  
  write = left/10          #  How many tens left to write out?
  left  = left - write*10  #  Subtract off those tens.
  
  if write > 0
    if write == 1  #  Uh-oh...
      #  Since we can't write "tenty-two" instead of "twelve",
      #  we have to make a special exception for these.
      if    left == 0
        numString = numString + 'ten'
      elsif left == 1
        numString = numString + 'eleven'
      elsif left == 2
        numString = numString + 'twelve'
      elsif left == 3
        numString = numString + 'thirteen'
      elsif left == 4
        numString = numString + 'fourteen'
      elsif left == 5
        numString = numString + 'fifteen'
      elsif left == 6
        numString = numString + 'sixteen'
      elsif left == 7
        numString = numString + 'seventeen'
      elsif left == 8
        numString = numString + 'eighteen'
      elsif left == 9
        numString = numString + 'nineteen'
      end
      #  Since we took care of the digit in the ones place already,
      #  we have nothing left to write.
      left = 0
    elsif write == 2
      numString = numString + 'twenty'
    elsif write == 3
      numString = numString + 'thirty'
    elsif write == 4
      numString = numString + 'forty'
    elsif write == 5
      numString = numString + 'fifty'
    elsif write == 6
      numString = numString + 'sixty'
    elsif write == 7
      numString = numString + 'seventy'
    elsif write == 8
      numString = numString + 'eighty'
    elsif write == 9
      numString = numString + 'ninety'
    end
    
    if left > 0
      numString = numString + '-'
    end
  end
  
  write = left  #  How many ones left to write out?
  left  = 0     #  Subtract off those ones.
  
  if write > 0
    if    write == 1
      numString = numString + 'one'
    elsif write == 2
      numString = numString + 'two'
    elsif write == 3
      numString = numString + 'three'
    elsif write == 4
      numString = numString + 'four'
    elsif write == 5
      numString = numString + 'five'
    elsif write == 6
      numString = numString + 'six'
    elsif write == 7
      numString = numString + 'seven'
    elsif write == 8
      numString = numString + 'eight'
    elsif write == 9
      numString = numString + 'nine'
    end
  end
  
  if numString == ''
    #  The only way "numString" could be empty is if
    #  "number" is 0.
    return 'zero'
  end
  
  #  If we got this far, then we had a number somewhere
  #  in between 0 and 100, so we need to return "numString".
  numString
end

=end