# Find the maximum total from top to bottom of the triangle below:

# 75
# 95 64
# 17 47 82
# 18 35 87 10
# 20 04 82 47 65
# 19 01 23 75 03 34
# 88 02 77 73 07 63 67
# 99 65 04 28 06 16 70 92
# 41 41 26 56 83 40 80 70 33
# 41 48 72 33 47 32 37 16 94 29
# 53 71 44 65 25 43 91 52 97 51 14
# 70 11 33 28 77 73 17 78 39 68 17 57
# 91 71 52 38 17 14 91 43 58 50 27 29 48
# 63 66 04 68 89 53 67 30 73 16 69 87 40 31
# 04 62 98 27 23 09 70 98 73 93 38 53 60 04 23

class Problem

	attr_accessor :array_container, :route

	def open
		@array_container = []
		data = File.open("data/pe18data.txt", mode="r")
		data.each do |line|
			array_line = line.split(" ")
			@temp_array = []
			array_line.each do |array_instance|
				@temp_array << array_instance.to_i
			end
			@array_container << @temp_array
		end
	end

	def solve
		@array_container.reverse!
		@array_container.each_with_index do |array_instance, idx|
			array_instance.each_with_index do |line, line_idx|
				unless @array_container[idx - 1] == nil
					first_possibility = @array_container[idx - 1][line_idx]
					second_posibility = @array_container[idx - 1][line_idx + 1]
					if first_possibility != nil and second_posibility != nil and first_possibility > second_posibility
						@array_container[idx][line_idx] += first_possibility
					elsif second_posibility != nil and second_posibility > first_possibility
						@array_container[idx][line_idx] += second_posibility

					end
				end

			end
		end
		print @array_container
	end

end

	z = Problem.new
	z.open
	z.solve

# finished in .01s
# answer = 1074


