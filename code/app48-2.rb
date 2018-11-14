puts "Введите число строк"
row = gets.to_i
puts "Введите число столбцов"
column = gets.to_i

a = Array.new(row) { Array.new(column){ rand(rand(1..5))}}
a.each {|var| p var}