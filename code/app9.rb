# Программа подсчитывает 30% налог на вводимую зарплату
puts "Your salary?"
salary = gets.to_i
tax_rate = 0.3
puts "Tax:" 
puts salary * tax_rate