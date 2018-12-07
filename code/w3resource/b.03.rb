# encoding: utf-8
# Write a Ruby program to create a new string which is n copies of a given string where n is a non-negative integer.

print "Enter string: "
str = gets.strip
print "Enter the number of copies: "
n_copies = gets.strip.to_i

n_copies.times do |i|
  puts str * i
end