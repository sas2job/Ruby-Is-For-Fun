# Известно, что на Луне продают участки. 
# Любой участок менее 50 квадратных метров стоит 1000 долларов. 
# Участок площадью от 50 до 100 квадратных метров стоит 1500 долларов. 
# От 100 и выше - по 25 долларов за квадратный метр. 
# Напишите программу, которая запрашивает длину и ширину участка и выводит на экран его стоимость.

puts "Введите длину?"
length = gets.to_i
puts "Введите ширину"
width = gets.to_i
square = width * length
puts "#{square} M2"

if square < 50
puts "Участок площадью #{square} M2 стоит 1000 долларов"
elsif square > 50 && square <= 100   
puts "Участок площадью #{square} M2 стоит 1500 долларов" 
else 
  puts "Участок площадью #{square} M2 стоит #{square * 25}"
end
gets