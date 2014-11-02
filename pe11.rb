class Read
	attr_accessor :array_container
	def initialize
		@array_container ||= []
		@compare_num ||= 0
	end

	def open
		data = File.open("data/pe11data.txt", mode="r")
		data.each do |line|
			array_line = line.split(" ")
			@temp_array = []
			array_line.each do |array_instance|
				converted = array_instance.to_i
				@temp_array << converted
				
			end
			@array_container << @temp_array
		end
	end

	def horizontal
		array_container.each do |nested_array|
			nested_array.each_with_index do |num, idx|
				unless nested_array[idx+3] == nil
					first_num = nested_array[idx]
					second_num = nested_array[idx+1]
					third_num = nested_array[idx+2]
					fourth_num = nested_array[idx+3]
					sum = first_num * second_num * third_num * fourth_num
					if @compare_num < sum
						@compare_num = sum
						puts @compare_num
					end
				end
			end
		end
	end

	def vertical
		@array_container.each_with_index do |array_instance,array_index|
			array_instance.each_with_index do |num_instance,num_index|
				unless @array_container[array_index+3] == nil
					first_num = @array_container[array_index][num_index]
					second_num = @array_container[array_index+1][num_index]
					third_num = @array_container[array_index+2][num_index]
					fourth_num = @array_container[array_index+3][num_index]
					sum = first_num * second_num * third_num * fourth_num
					if @compare_num < sum
						@compare_num = sum
						puts @compare_num
					end
				end
			end
		end
	end

	def diag_1
		@array_container.each_with_index do |array_instance,array_index|
			array_instance.each_with_index do |num_instance,num_index|
				unless @array_container[array_index+3] == nil or @array_container[array_index][num_index+3] == nil
					first_num = @array_container[array_index][num_index]
					second_num = @array_container[array_index+1][num_index+1]
					third_num = @array_container[array_index+2][num_index+2]
					fourth_num = @array_container[array_index+3][num_index+3]
					sum = first_num * second_num * third_num * fourth_num
					if @compare_num < sum
						@compare_num = sum
						puts @compare_num
					end
				end
			end
		end
	end

		def diag_2
		@array_container.each_with_index do |array_instance,array_index|
			array_instance.each_with_index do |num_instance,num_index|
				unless @array_container[array_index+3] == nil or @array_container[array_index][num_index-3] == nil
					first_num = @array_container[array_index][num_index]
					second_num = @array_container[array_index+1][num_index-1]
					third_num = @array_container[array_index+2][num_index-2]
					fourth_num = @array_container[array_index+3][num_index-3]
					sum = first_num * second_num * third_num * fourth_num
					if @compare_num < sum
						@compare_num = sum
						puts @compare_num
					end
				end
			end
		end
	end

	def solve
		open
		diag_1
		diag_2
		vertical
		horizontal
	end

end



z = Read.new
z.solve

# answer: 70600674



