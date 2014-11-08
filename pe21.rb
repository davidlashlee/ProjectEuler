class Problem

	attr_accessor :input_divisor_sum, :input_divisors, :pair_sum
	def initialize(input)
		@input_divisors = Hash.new
		@input_divisor_sum = Hash.new
		@pairs ||= [0]
		bundle(input)
		divisor_sum
		find_pairs
		puts @pairs.max
		

	end

	def divisors(input)
		@input_divisors[input] ||= []
		input.times do |number|
			if number >= 1 and input % number == 0
				@input_divisors[input] << number
			end
		end
	end

	def bundle(input)
		input.times do |i|
			divisors(i)
		end
	end

	def divisor_sum
		@input_divisors.each_pair do |key,value|
			sum = 0
			value.each do |divisor|
				sum += divisor
			end
			@input_divisor_sum[key] = sum
		end
	end

	def find_pairs
		@input_divisor_sum.each_pair do |key, value|
			if @input_divisor_sum[key] == @input_divisor_sum[value] and @input_divisor_sum[key] <= 10000
				@pairs << @input_divisor_sum[key]
			end
		end
		@pairs.uniq!
		puts @pairs.max
	end



end

z =Problem.new(10000)


