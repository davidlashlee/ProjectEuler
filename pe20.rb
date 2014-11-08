# Problem 20
# n! means n × (n − 1) × ... × 3 × 2 × 1
# For example, 10! = 10 × 9 × ... × 3 × 2 × 1 = 3628800,
# and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.
# Find the sum of the digits in the number 100!

require './lib/Sink.rb'

num = factorial(100)

$answer = 0
num.to_s.each_char do |num_instance|
	$answer += num_instance.to_i
end

puts $answer


# answer = 648
# [Finished in 0.2s]