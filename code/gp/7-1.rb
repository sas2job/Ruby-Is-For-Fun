# encoding: utf-8

puts "Какой длины будет массив случайных чисел?"

n = gets.strip.to_i

arr = []

while arr.size < n do
  user_input = rand(0..100) 
  arr << user_input
end

puts arr.to_s