# encoding: utf-8

def stars
  puts "Какую строчку склеиваем?"
  content = gets.strip
  puts "Сколько вам строк?"
  star = gets.to_i
  puts "Вот ваш результат: "
  puts content * star 
end  

stars

