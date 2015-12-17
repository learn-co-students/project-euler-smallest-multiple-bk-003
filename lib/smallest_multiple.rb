# Implement your procedural solution here!
def smallest_multiple(num)
	i = 0
	condition = false
	while !condition
		puts i
		if is_prime(num)
			i+=num
		else
			i+=(prime(num)*num)
		end
		condition = true if is_divisible?(i, num)
	end
	i
end

def is_prime(n)
	return true if n == 2
	return false if n < 2 || n % 2 == 0
	i = 3
	while i <= (n/2)
		return false if (n % i == 0 )
		i +=1
	end
	true
end

def prime(num)
	if is_prime(num)
		return num
	else
		prime(num-1)
	end
end

def is_divisible?(base, num)
	if num == 0
		return true
	end
	if base % num != 0
		false
	else
		is_divisible?(base, num-1)
	end
end