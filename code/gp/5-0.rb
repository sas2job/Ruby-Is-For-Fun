print "Введите ваше имя: "
name = gets.encode("UTF-8").capitalize.strip

puts "Привет, #{name}, " + "в вашем имени #{name.length} букв"