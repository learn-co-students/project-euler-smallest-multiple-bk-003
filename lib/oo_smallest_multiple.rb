# Implement your object-oriented solution here!
class SmallestMultiple
	attr_reader :num, :big_prime
	def initialize(num)
		@num = num
		@big_prime = prime(num-1)
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

	def lcm
		i = 0
		condition = false
		while !condition
			puts i
			i+=((big_prime*num))
			condition = true if is_divisible?(i, num)
		end
		i
	end

	def is_divisible?(base, num)
	if num == 0
		return true
	end
	if base % num != 0
		return false
	else
		is_divisible?(base, num-1)
	end
end

end