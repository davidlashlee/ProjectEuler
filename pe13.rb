class Problem

	def initialize(input)
		open
		solve(input)
	end
	def open
		data = File.open("data/pe13data.txt", mode="r")
		@numbers ||= []
		data.each do |line|
			@numbers << line.to_i
		end
	end
	def solve(to)
		@numbers.each do |num|
			@sum ||= 0
			@sum += num
		end
		humanize = @sum.to_s
		to.times do |idx|
			print humanize[idx]
		end
		puts "\n"
	end
end

Problem.new(10)

# answer: 5537376230
#[Finished in 0.1s]