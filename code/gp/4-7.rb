string1 = "Я первая строка"
string2 = "Я вторая строка"

# Выводим первый раз
puts "string1: " + string1
puts "string2: " + string2
puts
# Меняем местами
string1, string2 = string2, string1
puts "Поменяли местами"
# Выводим после замены
puts "string1: " + string1
puts "string2: " + string2