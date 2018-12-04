# encoding: utf-8

def stars
  puts "Сколько вам звезд на погоны?"
  star = gets.to_i
  puts "Вот ваши звезды :)"
  puts "*" * star 
end  

stars