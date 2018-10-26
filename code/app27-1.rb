# Напишите программу “иммигрант”. Программа должна задавать следующие вопросы: 
# “У вас есть высшее образование? (y/n)”, “У вас есть опыт работы программистом? (y/n)”, 
# “У вас более трех лет опыта? (y/n)”. 
# За каждый положительный ответ начисляется 1 балл (переменную можно назвать score). 
# Если набралось 2 или более баллов программа должна выводить на экран “Добро пожаловать в США”.

puts 'У вас есть высшее образование? (y/n)'
answer_education = gets.chomp.downcase
puts 'У вас есть опыт работы программистом? (y/n)'
answer_experience = gets.chomp.downcase
puts 'У вас более трех лет опыта? (y/n)'
answer_experience_3_years = gets.chomp.downcase

score = 0
if answer_education == 'y'
  score = score + 1
end
if answer_experience == 'y'
  score = score + 1
end
if answer_experience_3_years == 'y'
  score = score + 1
end
puts "#{score}"
if score >= 2
puts 'Добро пожаловать в США'
gets
end


