# 1. Find the sum of numbers in the first row
# 2. Find the sum of all numbers in the file
# 3. How many numbers are in the file?
# 4. How many of those are even? Divisible by 7?
# 5. (Harder) Find a number with the same value and position in the list

input = File.read("numbers.csv").lines
sum = 0
line_one_chomp = input[1].chomp
line_one_chomp.each do |number|
  field = number.to_i
  sum = sum + field
end

