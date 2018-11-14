puts "Введите число строк"
row = gets.to_i
puts "Введите число столбцов"
column = gets.to_i

puts "Каждое значение уникально (y/n)"
uniquely = gets.chomp.downcase

if uniquely == 'y'
  # Уникальный элемент в каждой строке
  a = Array.new(row) { Array.new(column){ rand(rand(1..5))}}
  else
  #Случайные значения в каждой ячейке массива
  a = Array.new(row) { Array.new(column, rand(1..5))}
end
a.each {|var| p var}