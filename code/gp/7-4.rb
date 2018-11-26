# encoding: utf-8

puts "Какой длины будет массив случайных чисел?"

n = gets.strip.to_i

arr = []
user_input = 1
while arr.size < n do
  arr << user_input
  user_input += 1
end
puts arr.to_s
reverse_arr = []
for item in arr do
	reverse_arr.unshift(item) # и добавляем каждый элемент в начало нового массива
end

puts "новый массив, полученный из исходного:"
puts reverse_arr.to_s

