# encoding: utf-8

def area_circle(radius)
  Math::PI * (radius ** 2)
end  

puts "Введите радиус круга: "
radius = gets.to_f
puts "Площадь круга: " + area_circle(radius).to_s
puts "Введите радиус второго круга: "
radius = gets.to_f
puts "Площадь второго круга: " + area_circle(radius).to_s