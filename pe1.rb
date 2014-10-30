1000.times do |i|
	sum ||= 0
	if i % 3 == 0 or i % 5 == 0
		sum += i
		puts sum
	end
end
