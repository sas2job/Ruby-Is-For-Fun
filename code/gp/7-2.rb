# encoding: utf-8

puts "Какой длины будет массив случайных чисел?"

n = gets.strip.to_i

arr = []
max_number = 0
while arr.size < n do
  user_input = rand(0..100) 
  arr << user_input
end

for item in arr do
 if item > max_number
  max_number = item
 end 
end  
puts arr.to_s
puts "Самое большое число: " + max_number.to_s