z = [1,2,3,4,5,6,7,8,9,10,11,2,13,14,15,16,17,18,19,20]
test ||= 1
y = false
while y == false
	count = 0
	z.each do |i|
		if test % i == 0
			count += 1
		else
			test += 1
		end
		if count == 20
			puts test
			y = true
		end
	end
end

#answer = 232792560