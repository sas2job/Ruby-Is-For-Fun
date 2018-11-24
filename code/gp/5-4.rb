# encoding: utf-8
puts "Какая у вас на руках валюта?"

puts "1. Рубли"
puts "2. Доллары"

choice = gets.strip

print "Сколько сейчас стоит 1 доллар в рублях? "
exchange_rate = gets.chomp.to_f

if choice == "1"

  print "Сколько  у вас рублей? "
  rub = gets.chomp.to_f

  exchange = (rub / exchange_rate).round(2) 

  puts "Ваши запасы равны: $ " + exchange.to_s

  elsif choice == "2"

    print "Сколько  у вас долларов? "
    dollar = gets.chomp.to_f

    exchange = (dollar * exchange_rate).round(2) 

    puts "Ваши запасы равны: " + exchange.to_s + "рублей"
end
