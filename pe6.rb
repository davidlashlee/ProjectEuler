# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

first ||= 0
container1 = (1..100)
container1.each { |i|first += i**2}
second ||= 0
container2 = (1..100)
container2.each { |i| second += i }
second **= 2

answer = first - second
puts answer

# answer = 25164150