# 5. (Harder) Find a number with the same value and position in the list
require 'pry'

lines = File.read("numbers.csv").lines
# 1. Find the sum of numbers in the first row
def sum_one_line l
  numbers_as_strings = l.chomp.split ","
  running_total = 0
  numbers_as_strings.each do |n|
    running_total += n.to_f
  end
  running_total
end

s = sum_one_line lines.first
puts "Sum of the first line is: #{s}"


# binding.pry
# 2. Find the sum of all numbers in the file

running_total = 0
lines.each do |line|
  s = sum_one_line line
  running_total += s
end

puts "Sum of file: #{running_total}"


# 3. How many numbers are in the file?
s = lines.map {|l| l.split(",")}.flatten.count

puts "Number of numbers in the file: #{s}"

# 4. How many of those are even? Divisible by 7?
all_tokens = lines.map {|l| l.split(",")}.flatten
all_numbers = all_tokens.map {|t| t.to_i}

evens = []
all_numbers.each do |n|
  if n.even?
    evens.push n
  end
end
e = evens.count
puts "Number of evens: #{e}"

sevens = []
all_numbers.each do |n|
  if n % 7 == 0
    sevens.push n
  end
end
s7 = sevens.count
puts "Number of evens: #{s7}"


#Optional code
all_numbers.select {|n| n.even?}.count
all_numbers.select {|n| n % 7 == 0}.count
all_numbers.reject {|n| n % 7 == 0}.count