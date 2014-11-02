sum = 1000

def sets(limit)
	result = []
	(2..limit).each do |m|
		(1..m).each do |n|
			result << [(m**2) - (n**2), 2*(m*n), (m**2) + (n**2)]
		end
	end
	result
end

test = sets(sum)
test.each do |trip_instance|
	a = trip_instance[0]
	b = trip_instance[1]
	c = trip_instance[2]
	if a + b + c == sum
		puts a
		puts b
		puts c
		break
	end
end
#          A + B = C
# answer: 375 200 425





