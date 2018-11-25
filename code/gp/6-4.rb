# encoding: utf-8

arr = ["камень", "ножницы", "бумага"]

print "Введите вариант: 0 - камень, 1 - ножницы, 2 - бумага " 

h_choice = gets.strip.to_i

pc_choice = rand(0..2)

puts "Вы выбрали: " + arr[h_choice]
puts "Компьютер выбрал: " + arr[pc_choice]

# Бумага побеждает камень («бумага накрывает камень» или «камень тонет, бумага нет»).
# Камень побеждает ножницы («камень затупляет или ломает ножницы»).
# Ножницы побеждают бумагу («ножницы разрезают бумагу»).

if h_choice == pc_choice
  puts "Ничья"
end

if h_choice == 0 && pc_choice == 1
  puts "Вы выиграли. "
end

if h_choice == 0 && pc_choice == 2
  puts "Компьютер выиграл. "
end

if h_choice == 1 && pc_choice == 0
  puts "Компьютер выиграл. "
end

if h_choice == 1 && pc_choice == 2
  puts "Вы выиграли. "
end

if h_choice == 2 && pc_choice == 0
  puts "Вы выиграли. "
end

if h_choice == 2 && pc_choice == 1
  puts "Компьютер выиграл. "
end