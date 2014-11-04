class Problem
	attr_accessor :length, :answer, :temp_answer

	def initialize(num)
		@length ||= 0
		@mem = Hash.new
		solve(num)
		puts "answer: #{answer}"
		puts "Collatz Sequence Length: #{length}"
		
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
			if @mem[input] == nil
			@mem[input] = @sequence_length
			@sequence_length += 1
			input = sort(input)
			else
			input = 1
			end
		end
	end

	def solve(loopnum)
		loopnum.times do |num|
			sequence(num)
		end
		@mem.each {|key,value|
			if value > @length
				@length = value
				@answer = key
			end

		}
	end


end

z = Problem.new(1000000)

# answer: 837799
# Collatz Sequence Length: 524
# [Finished in 14.4s]