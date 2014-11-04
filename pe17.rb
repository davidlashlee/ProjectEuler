onedigit = {1 => "one", 2=> "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 9 => "nine"}
twodigit = {1 => "ten", 2 => "twenty", 3 => "thirty", 4 => "fourty", 5 => "fifty", 6 => "sixty", 7 => "seventy", 8 => "eighty", 9 => "ninety" }
100.times do |i|
	humanize = (i+1).to_s
	if humanize.length == 1
		puts onedigit[i+1]
		puts i+1
	elsif humanize.length == 2
		puts twodigit[i+1]
	end
end

puts twodigit[1]

 


