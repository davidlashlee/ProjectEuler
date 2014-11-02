x = 1
y = 2
sum = 0
while x <= 4000000
	y += x
	if y % 2 == 0
		sum += y
	x += y
end
puts sum
end

# answer is 9973080
