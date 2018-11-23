# encoding: utf-8
print "Введите число 1: "
integer_1 = gets.to_i

print "Введите число 2: "
integer_2 = gets.to_i

print "Введите число 3: "
integer_3 = gets.to_i

average = (integer_1 + integer_2 + integer_3)/3

puts "Среднее арифметическое: " + average.to_s