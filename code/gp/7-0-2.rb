# encoding: utf-8

puts "Введите N, где N - число элементов в массиве"

n = gets.strip.to_i

arr = []

total = 0

user_input = 1

while arr.size < n do
  arr << user_input
  total += user_input
  user_input += 1
end

puts arr.to_s

puts "сумма элементов в массиве: " + total.to_s