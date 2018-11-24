# encoding: utf-8
print "Сколько сейчас стоит 1 доллар в рублях? "
dollar = gets.chomp.to_f

print "Сколько  у вас рублей? "
rub = gets.chomp.to_f

exchange = (rub / dollar).round(2) 

puts "Ваши запасы равны: $ " + exchange.to_s