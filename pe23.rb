require './lib/Sink.rb'

print factor_sum(100)


class Problem

	attr_accessor :abundant_num_list, :counter

	def initialize(input)
		@answer_container = Array.new
		@counter = 0
		@found ||= false
		abundant_num_gen(input)
		create_sum_hash
		input.times do |i|
			unless @sum_hash[i] == true
				@counter += i
			end
		end
	end

	def abundant_num_gen(limit)
		@abundant_num_list ||= Array.new
		limit.times do |i|
			sum = factor_sum(i)
			if sum != nil && sum > i
				@abundant_num_list << i
			end
		end
	end

	def create_sum_hash
		@sum_hash = Hash.new
		@abundant_num_list.each do |a|
			@abundant_num_list.each do |b|
				@sum_hash[(a+b)] = true
			end
		end
	end


end

z = Problem.new(28123)
puts z.counter


# answer = 4179871
# first attempt time:[Finished in 1150.1s]
# second attempt time:[Finished in 9.5s]