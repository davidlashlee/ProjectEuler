# Longest Collatz sequence
# Problem 14
# The following iterative sequence is defined for the set of positive integers:

# n → n/2 (n is even)
# n → 3n + 1 (n is odd)

# Using the rule above and starting with 13, we generate the following sequence:

# 13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
# It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.

# Which starting number, under one million, produces the longest chain?

# NOTE: Once the chain starts the terms are allowed to go above one million.

class Problem

	attr_accessor :container, :numbers, :answer, :answerkey

	def initialize(input)
		@container = Hash.new
		solve(input)
	end

	def divide(input)
		input/2
	end

	def multiply(input)
		(input*3) +1
	end

	def sort(input)
		if input%2 == 0
			divide(input)
		else
			multiply(input)
		end
	end

	def loops(input)
		inputnum = input
		@numbers = []
		while input > 1
			@numbers << input
			input = sort(input)

		end
		@numbers << 1
		@container[inputnum] = @numbers
	end

	def solve(input)
		input.times do |i|
			loops(i)
		end
		@answer = 0
		@answerkey = 0
		@container.each do |key, value|
			if value.length > @answer
				@answer = value.length
				@answerkey = key
			end
		end
	end


end


z = Problem.new(1000000)
puts z.answer
puts z.answerkey








