def factorial(number)
		answer = number
		while number > 1
			number -= 1
			answer = (answer * number)
		end
		return answer
end
