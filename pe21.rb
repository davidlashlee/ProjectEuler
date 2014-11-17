# Let d(n) be defined as the sum of proper divisors of n (numbers less than n which divide evenly into n).
# If d(a) = b and d(b) = a, where a ≠ b, then a and b are an amicable pair and each of a and b are called amicable numbers.

# For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110; therefore d(220) = 284. The proper divisors of 284 are 1, 2, 4, 71 and 142; so d(284) = 220.

# Evaluate the sum of all the amicable numbers under 10000.
require 'Prime'

class Problem

	attr_accessor :prime_fac, :fac_total, :pairs

	def initialize(input)
		@prime_fac = Hash.new
		@fac_total = Hash.new
		@pairs = []
		solve(input)
		sum_of_pairs
	end

	def prime_factor(input)
		unless input == 0 
			then @prime_fac[input] = Prime.prime_division(input)
		end
	end

	def factor_sum(input)
		@fac_total[input] ||= 1
		unless @prime_fac[input] == nil
			# puts "prime factors #{@prime_fac[input]}"
			@prime_fac[input].each do |i|
				@fac_total[input] *= (((i[0])**(i[1]+1))-1)/(i[0]-1)
			end
			@fac_total[input] -= input
		end
	end

	def find_pairs
		@fac_total.each_pair do |key, value|
			if @fac_total[key] == value and @fac_total[value] == key and key != value
				# puts "found pair #{key} => #{fac_total[key]} == #{value} => #{@fac_total[value]}"
				@pairs << key
				# @pairs << @fac_total[value]
			end
		end
	end



	def solve(input)
		
		input.times do |i|
			prime_factor(i)
		end
		input.times do |i|
			factor_sum(i)
		end
		find_pairs

		puts @pairs.max
	end

	def sum_of_pairs
		@answer = 0
		@pairs.each do |i|
			if i > 1 and i <= 10000
				@answer += i
			end
		end
		puts @answer
	end

end
z =Problem.new(10000)


# 6368
# 31626
# [Finished in 0.3s]