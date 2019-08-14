#write your code here
def add (num1, num2)
	return num1 + num2
end

def subtract (num1, num2)
	return num1 - num2
end

def sum (array) 
	if array.empty?
		return 0
	end
	sum = 0
	array.each { |i| sum += i}
 	return sum
end

def multiply (array)
	if array.empty?
		return 0
	end
	product = 1
	array.each { |i| product *= i }
	return product
end

def power(num1, num2)
	return num1 ** num2
end

def factorial (num)
	if (num == 0)
		return 1
	end

	product = 1
	for i in (1..num)
		product *= i
	end
	return product
end
