puts "Введите число строк"
row = gets.to_i
puts "Введите число столбцов"
column = gets.to_i

a = Array.new(row) { Array.new(column, rand(1..5))}
