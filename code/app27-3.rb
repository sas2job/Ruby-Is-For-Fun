# Напишите программу “иммигрант”. Программа должна задавать следующие вопросы: 
# “У вас есть высшее образование? (y/n)”, “У вас есть опыт работы программистом? (y/n)”, 
# “У вас более трех лет опыта? (y/n)”. 
# За каждый положительный ответ начисляется 1 балл (переменную можно назвать score). 
# Если набралось 2 или более баллов программа должна выводить на экран “Добро пожаловать в США”.
questions = ['У вас есть высшее образование? (y/n)',
             'У вас есть опыт работы программистом? (y/n)',
             'У вас более трех лет опыта? (y/n)']
 
answers = 0
 
questions.each do |question|
  puts question
  answers += 1 if gets.chomp.casecmp('y').zero?
end
 
if answers >= 2
  puts 'Добро пожаловать в США'
else
  puts 'Недостаточно положительных ответов'
end
gets