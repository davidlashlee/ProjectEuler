# Using names.txt (right click and 'Save Link/Target As...'),
# a 46K text file containing over five-thousand first names,
# begin by sorting it into alphabetical order. 
# Then working out the alphabetical value for each name,
# multiply this value by its alphabetical position in the list
# to obtain a name score.

# For example, when the list is sorted into alphabetical order,
# COLIN, which is worth 3 + 15 + 12 + 9 + 14 = 53, is the 938th name
# in the list. So, COLIN would obtain a score of 938 × 53 = 49714.

# What is the total of all the name scores in the file?

class Array

	def quicksort(array_input = self)
		if array_input.length <= 1
			return array_input
		end
		pivot = array_input.sample
		array_input.delete_at(array_input.index(pivot))
		less = []
		greater = []
		array_input.each do |i|
			if i >= pivot
				greater << i
			elsif i < pivot
				less << i
			end
		end
		sorted_array = []
		sorted_array << self.quicksort(less)
		sorted_array << pivot
		sorted_array << self.quicksort(greater)
		sorted_array.flatten!
	end

end

class Problem

	attr_accessor :array_container, :letters, :points, :answer

	def initialize
		open
		@array_container = @array_container.quicksort
		letters_value
		parse
		multiply
		@answer = @points.inject(:+)
		puts @answer
	end

	def open
		@array_container = []
		data = File.open("data/pe22data.txt", mode="r")
		data.each do |i|
			z = i.split(",")
			z.each do |name|
				name.delete! '"'
				@array_container << name
			end
		end

	end

	def letters_value
		@letters = Hash.new
		('a'..'z').each_with_index do |i, idx|
			@letters[i] = idx + 1
		end
	end

	def parse
		@points = Array.new
		@array_container.each_with_index do |name,index|
			@points[index] ||= 0
			name.each_char do |char|
				@points[index] += @letters[char.downcase]
			end
		end
	end

	def multiply
		@points.each_with_index do |name_value, location_value|
			@points[location_value] = name_value * (location_value + 1)
		end
	end
end

z = Problem.new



## ANSWER
# 871198282
# [Finished in 0.2s]



