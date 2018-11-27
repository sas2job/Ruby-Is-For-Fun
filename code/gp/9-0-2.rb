# encoding: utf-8

def declension (number, krokodil, krokodila, krokodilov)
  if (number == nil || !number.is_a?(Numeric))
    number = 0
  end

  remainder = number % 10

  if (remainder == 1)
    return krokodil
  end
  
  if (remainder >= 2 && remainder <= 4) 
    return krokodila
  end

  if (remainder >= 5 && remainder <= 9 || remainder == 0)
    return krokodilov
  end 

end  

how_much = ARGV[0].to_i

puts "#{how_much} " + declension(how_much, "негритёнок", "негритёнка", "негритят") + " " + declension(how_much, "пошёл", "пошли", "пошли") + " купаться в море!"