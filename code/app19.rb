# Известно, что стоимость дома - 500 тысяч долларов. 
# Человек берет дом в рассрочку на 30 лет. 
# Чтобы выплатить дом за 30 лет, нужно платить 16666 долларов в год (это легко посчитать разделив 500 тысяч на 30). 
# Написать программу, которая для каждого года выводит сумму, которую осталось выплатить.

sum = 500000
annual_payment = 16666
30.times do |i|
sum = sum - annual_payment
puts "За #{i + 1} год осталось заплатить #{sum}"
end