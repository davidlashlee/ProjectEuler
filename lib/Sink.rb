require 'Prime'
def factorial(number)
	answer = number
	while number > 1
		number -= 1
		answer = (answer * number)
	end
	return answer
end

def prime_factor(input)
	@prime_fac ||= Hash.new
	unless input == 0 
		then @prime_fac[input] = Prime.prime_division(input)
	end
end

def factor_sum(input)
	prime_factor(input)
	@fac_total ||= Hash.new
	@fac_total[input] ||= 1
	unless @prime_fac[input] == nil
		@prime_fac[input].each do |i|
			@fac_total[input] *= (((i[0])**(i[1]+1))-1)/(i[0]-1)
		end
		@fac_total[input] -= input
	end
end
