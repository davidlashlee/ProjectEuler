x = 999
y = 999
test = x + y
while test.to_s.reverse != test.to_s
	puts test.to_s
	test -= 1
end
# answer = 1991