order = {}

loop do
  print 'Введите id продукта: '
  id_product = gets.strip

  print "Сколько штук вы хотите заказать: "
  amount_now = gets.strip.to_i

  amount = order[id_product].to_i
  amount += amount_now

  order[id_product] = amount

  puts order.inspect
end