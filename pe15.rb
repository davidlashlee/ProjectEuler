# Project Euler Problem 15: Lattice Paths
# Starting in the top left corner of a 2×2 grid,
# and only being able to move to the right and down, 
# there are exactly 6 routes to the bottom right corner.
# How many such routes are there through a 20×20 grid?


class Problem

	def binom(n,k)
		n_factorial = factorial(n)
		k_factorial = factorial(k)
		n_minus_k_factorial = factorial((n-k))

		binomial_coefficent = n_factorial / (k_factorial * n_minus_k_factorial)
		puts binomial_coefficent
		return binomial_coefficent
	end

	def factorial(number)
		@answer = number
		while number > 1
			number -= 1
			@answer = (@answer * number)
		end
		return @answer
	end

end

z = Problem.new

z.binom(40,20)

# answer: 137846528820
# [Finished in 0.1s]