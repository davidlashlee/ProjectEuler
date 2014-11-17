class Problem

	attr_accessor :fib_array
	def initialize
		@fib_array = [1,1]

	end

	def fib
		length = @fib_array.length
		@fib_array << (@fib_array.last + @fib_array[length-2])
	end

	def solve
		until @fib_array.last.to_s.length >= 1000
			fib
		end
		puts @fib_array.length
	end
end

z = Problem.new
z.solve

# answer = 4781
# [Finished in 0.3s]