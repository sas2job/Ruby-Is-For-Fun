###############################
# ОБЪЯВЛЯЕМ МАССИВЫ
###############################
# массив для первой команды
@arr1 = Array.new(10, 100)
puts "#{@arr1}"
# массив для второй команды
@arr2 = Array.new(10, 100)
puts "#{@arr2}"

###############################
# АТАКА
###############################
# Метод принимает массив для атаки
def attack(arr)
  sleep 1 # добавим sleep для красоты
  i = rand(0..9) # Выбираем элемент по индексу
  impact_power = rand(30..100)
  puts "Мощность удара #{impact_power}"
  if arr[i] > 0
    health_level = arr[i]
    health_level = health_level - impact_power
    arr[i] = health_level
    # puts "Робот по индексу #{i} ранен"
    puts "Робот по индексу #{i} ранен, у него осталось #{health_level}"
    else arr[i] <=0 
    puts "Промазали по индексу #{i}"
  end
  sleep 1 # еще один sleep для красоты вывода
end

###############################
# ПРОВЕРКА ПОБЕДЫ
###############################
def victory?
  robots_left1 = @arr1.count { |x| x > 0 }
  robots_left2 = @arr2.count { |x| x > 0 }
    if robots_left1 <= 0
    puts "Команда 2 победила, в команде осталось #{robots_left2} роботов"
    return true
  end
    if robots_left2 <= 0
    puts "Команда 1 победила, в команде осталось #{robots_left1} роботов"
    return false
  end
  false
end

###############################
# СТАТИСТИКА
###############################
def stats
  # количество живых роботов для первой и второй команды
  cnt1 = @arr1.count { |x| x > 0 }
  cnt2 = @arr2.count { |x| x > 1 }
  puts "\n"
  puts "1-ая команда: #{cnt1} роботов в строю"
  puts "#{@arr1}"
  puts "2-ая команда: #{cnt2} роботов в строю"
  puts "#{@arr2}"
  
end

###############################
# ГЛАВНЫЙ ЦИКЛ
###############################
loop do
  puts 'Первая команда наносит удар...'
  attack(@arr2)
  exit if victory?
  stats
  sleep 3
  puts # пустая строка
  puts 'Вторая команда наносит удар...'
  attack(@arr1)
  exit if victory?
  stats
  sleep 3
  puts # пустая строка
end