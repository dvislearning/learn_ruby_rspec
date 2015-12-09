def add(a,b)
	a + b
end

def subtract(a,b)
	a - b
end

def power(a,b)
	a**b
end

def factorial(a)
	return 0 if a == 0
	a.downto(1).reduce(:*)
end

def sum (array)
	total = 0
	array.each{|a| total += a}
	total
end

def multiply (array)
	return 0 if array.length == 0
	total = 1
	array.each{|a| total *= a}
	total
end
