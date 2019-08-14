def translate(word)
	latinWord = ""
	vowels = ["a", "e", "i", "o", "u"]
	count = 0
	words = word.split(/\W+/)
	
	for i in words do
	a = i
 	a = a.split("")
 	if (a[0] == "q" && a[1] == "u")
		letter1 = a[0]
		letter2 = a[1]
		a.shift
		a.shift
		a.push(letter1)
		a.push(letter2)
		a.push("a")
		a.push("y")
		l = a.join
		latinWord += l
	end
	end

	for i in words do
	w = i.split("")
	4.times do

	 if (a[0] == "q" && a[1] == "u")
		letter1 = a[0]
		letter2 = a[1]
		a.shift
		a.shift
		a.push(letter1)
		a.push(letter2)
		a.push("a")
		a.push("y")
		l = a.join
		latinWord += l
	end

	if (vowels.include? w[0])
		w.push("a")
		w.push("y")
		latinWord += w.join + " "
		break
	else
		letter = w[0]
		if (count == 0) 
			w.shift
			w.push(letter)
			count += 1
			next
		end
		w.shift
		w.push(letter)
		
	end
	end
	end

	latinWord = latinWord.strip
	return latinWord
end