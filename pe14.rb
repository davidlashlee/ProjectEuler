# Problem 14: Longest Collatz Sequence
# The following iterative sequence is defined for the set of positive integers:
# 	n → n/2 (n is even)
# 	n → 3n + 1 (n is odd)
# Using the rule above and starting with 13, we generate the following sequence:
# 	13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
# It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms.
# Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.
# Which starting number, under one million, produces the longest chain?
# NOTE: Once the chain starts the terms are allowed to go above one million.

class Problem
	attr_accessor :length, :answer, :temp_answer, :mem

	def initialize(num)
		@length ||= 0
		@mem = Hash.new
		solve(num)
		puts "answer: #{answer}"
		puts "Collatz Sequence Length: #{length}"
		puts "mem length: #{mem.length}"	
	end

	def divide(input)
		input/2
	end

	def multiply(input)
		(input*3) + 1
	end

	def sort(input)
		if input%2 == 0
			divide(input)
		else
			multiply(input)
		end
	end

	def sequence(input)
		inputnum = input
		@sequence_length = 0
		while input > 1
			if @mem[input] != nil
				@sequence_length += @mem[input]
				input = 1
			else
				@sequence_length += 1
				input = sort(input)
			end
		end
		@mem[inputnum] = @sequence_length
	end

	def solve(loopnum)
		loopnum.times do |num|
			sequence(num)
		end
		@mem.each do |key,value|
			if value > @length
				@length = value
				@answer = key
			end

		end
	end


end

z = Problem.new(1000000)

#answer: 837799
#Collatz Sequence Length: 524
#[Finished in 4.1s]