class Book
	def title 
		@title
	end
	def title=w
		do_not_capitalize = ["and", "or", "the", "over", "to", "the", "a", "but", "in", "of", "an"]
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
  	@title = str
  end
end
