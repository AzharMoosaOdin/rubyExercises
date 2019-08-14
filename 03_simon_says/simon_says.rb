#write your code here
def echo (word)
	return word
end

def shout (word)
	return word.upcase
end

def repeat (word, times=2)
  return ("#{word} "*times).sub(/\s+\Z/, "")
end

def start_of_word (word, times)
	string = ""
	for i in (0..times - 1)
		string += word.split('')[i]
	end
	return string
end

def first_word (word)
	return word.split(" ")[0]
end

def titleize (w) 
	do_not_capitalize = ["and", "or", "the", "over", "to", "the", "a", "but"]
	string = w.split(" ")
  	str = ""
  	count = 0
  	string.each do |x|
  		if (count == 0) 
  			str += "#{x.capitalize} "
  			count += 1
          	next
  		end
  		if (do_not_capitalize.include? x)
  			str += "#{x} "
  		else
  			str += "#{x.capitalize} "
  		end
  	end

  	str = str.strip
  	return str
end