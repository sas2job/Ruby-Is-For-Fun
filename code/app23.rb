# Вывести на экран числа от 50 до 100, и если число четное - рядом с ним написать `true`, если нечетное - `false`.

50.upto(100) { |i| puts "#{i} - #{i.to_i.even?}" }