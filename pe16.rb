# Project Euler: Problem 16: Power digit sum
# 215 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.
# What is the sum of the digits of the number 21000?

class Problem

	attr_accessor :answer 

	def initialize(number,power)
		solve(number,power)
		puts "Answer: #{@answer}"
	end


	def math(number,power)
		number**power
	end

	def solve(inputnum,inputpower)
		sum = math(inputnum,inputpower)
		humanized = sum.to_s
		@answer = 0
		humanized.each_char do |string_num|
			@answer += string_num.to_i
		end
	end

end

Problem.new(2,1000)

#Answer: 1366
#[Finished in 0.2s]