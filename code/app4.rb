puts "Введите год рождения первого клиента?"
year_of_birth_0 = gets
#
puts "Введите год рождения второго клиента?"
year_of_birth_1 = gets
#
puts "Введите год рождения третьего клиента?"
year_of_birth_2 = gets
#
puts "Введите место рождения первого клиента?"
place_of_birth_0 = gets
#
puts "Введите место рождения второго клиента?"
place_of_birth_1 = gets
#
puts "Введите место рождения третьего клиента?"
place_of_birth_2 = gets
#
puts "Введите телефонный номер первого клиента?"
phone_number_0 = gets
#
puts "Введите телефонный номер второго клиента?"
phone_number_1 = gets
#
puts "Введите телефонный номер третьего клиента?"
phone_number_2 = gets
#
puts "baseball card № 1"
puts year_of_birth_0.to_s.chomp + " " + place_of_birth_0.to_s.chomp + " " + phone_number_0.to_s.chomp
#
puts "baseball card № 2"
puts year_of_birth_1.to_s.chomp + " " + place_of_birth_1.to_s.chomp + " " + phone_number_1.to_s.chomp
#
puts "baseball card № 3"
puts year_of_birth_2.to_s.chomp + " " + place_of_birth_2.to_s.chomp + " " + phone_number_2.to_s.chomp
gets