def add(x, y)
	x + y
end

def subtract(x, y)
	x - y
end

def sum(arr)
	total = 0
	arr.each do |x|
		total += x
	end

	return total
end

def multiply(x, y)
	x * y
end

def power(x, pow)
	if pow == 0
		return 1
	elsif pow == 1
		return x
	end

	ans = 1

	pow.times do
		ans *= x
	end

	return ans
end

# Recursive factorial method
def factorial(n)
	if n == 0 || n == 1
		return 1
	end

	return factorial(n-1) * n
end