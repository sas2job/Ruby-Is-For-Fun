def get_number(what)
  print "Введите #{what}: "
  gets.to_i
end
age = get_number('возраст')
salary = get_number('зарплату')
rockets = get_number('количество ракет для запуска')