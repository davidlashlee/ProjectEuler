class Problem
	attr_accessor :length, :answer

	def initialize(num)
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
		@container = []
		@length ||= 0
		while input > 1
			input = sort(input)
			@container << sort(input)
		end
		if @container.length > @length
			@length = @container.length
			@answer = inputnum
		end
	end

	def solve(loopnum)
		loopnum.times do |num|
			sequence(num)
		end
	end


end

z = Problem.new(1000000)

# answer: 837799
# Collatz Sequence Length: 524
# [Finished in 32.1s]