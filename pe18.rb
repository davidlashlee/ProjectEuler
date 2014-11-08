

class Problem

	attr_accessor :array_container, :route

	def open
		@array_container = []
		data = File.open("data/pe18data.txt", mode="r")
		data.each do |line|
			array_line = line.split(" ")
			@temp_array = []
			array_line.each do |array_instance|
				converted = array_instance
				@temp_array << converted.to_i
			end
			@array_container << @temp_array
		end
	end

	def solve
		@array_container.reverse!
		@array_container.each_with_index do|array_instance, idx|
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


