# the Prime Factors of 13195 are 5, 7, 13, 29
# What is the largest prime factor of the number 600851475143
require 'prime'
num = 600851475143

def Primefactest(num)
	prime_container ||= []
	prime_container << Prime.take_while {|p| p < 600851475143 }
	prime_container.length.times do |i|
		if num % prime_container.last == 0
			puts prime_container.last
		else
			puts prime_container.last
			prime_container.last.pop!
		end 
	end
end

Primefactest(num)
