# Каждый месяц откладывается определенная сумма. 
# Программа должна выводить сколько средств будет накоплено в течение следующих 24 месяцев если каждый месяц начисляется 10%.
sum = 0
percent = 0
24.times do |i|
sum = sum + 500 + percent
percent = sum * 0.1
puts "За #{i + 1} месяц у бабушки в сундуке #{sum + percent}"
end