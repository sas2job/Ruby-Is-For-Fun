# encoding: utf-8

arr = [1, 2, 3, 4, 5]

print "Исходный массив: " + arr.to_s

print "Возврат нового массива, в котором элементы массива стоят в обратном порядке " + arr.reverse.to_s

print "Исходный массив (не изменился): " + arr.to_s

print "Используем bang метод на массиве: " + arr.reverse!.to_s

print "Исходный массив (изменился): " + arr.to_s