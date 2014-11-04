onedigit = {1 => "one", 2=> "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 9 => "nine"}
extradigit = {1 => "eleven", 2 => "twelve", 3 => "thirteen", 4 => "fourteen", 5 => "fifteen", 6 => "sixteen", 7 => "seventeen", 8 => "eighteen", 9 => "nineteen"}
twodigit = {1 => "ten", 2 => "twenty", 3 => "thirty", 4 => "fourty", 5 => "fifty", 6 => "sixty", 7 => "seventy", 8 => "eighty", 9 => "ninety" }
1000.times do |i|
	humanize = (i+1).to_s
	if humanize.length == 1
		puts onedigit[i+1]
	elsif humanize.length == 2 and humanize.to_i == 10
		puts "ten"
	elsif humanize.length == 2 and humanize[0] == 1.to_s
			puts extradigit[(humanize[1].to_i)]
	elsif humanize.length == 2 
			puts "#{twodigit[(humanize[0].to_i)]}" + "#{onedigit[(humanize[1].to_i)]}"
	elsif humanize.length == 3 and humanize[1] == 1.to_s
		puts "#{onedigit[(humanize[0].to_i)]}" + " " + "hundred " + "#{twodigit[(humanize[1].to_i)]} " + "#{extradigit[(humanize[2].to_i)]}"
	elsif humanize.length == 3
		puts "#{onedigit[(humanize[0].to_i)]}" + " " + "hundred " + "#{twodigit[(humanize[1].to_i)]} " + "#{onedigit[(humanize[2].to_i)]}"
	elsif humanize.length == 4
		puts "one thousand bitches"
	end
end





