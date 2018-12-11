# Get My Number Game
# Written by: you!

puts "Welcome to 'Get My Number!'"

# Получение имени игрока и вывод приветствия
puts "What's your name?"
input = gets
name = input.chomp
puts "Welcome, #{name}"

# Сохранение случайного числа
puts "I've got a random number between 1 and 100"
puts "Can you guess it?"
target = rand(100) + 1

# Отслеживание количества попыток
num_guesses = 0

# Признак продолжения игры
guessed_it = false

until num_guesses == 10 || guessed_it
  puts "You've got #{10 - num_guesses} guesses left"
  print "Make a guess: "
  guess = gets.to_i
  
  num_guesses += 1

  # Сравнение введенного числа с загаданым и вывод соответствующего сообщения
  if guess < target 
    puts "Oops. Your guess was LOW."
  elsif guess > target 
    puts "Oops. Your guess was HIGH."
  elsif guess == target 
    puts "Good job, #{name}!"
    puts "You guessed my number in #{num_guesses} guesses!"
    guessed_it = true  
  end  
end

unless guessed_it 
  puts "Sorry. You didn't get my number. It was #{ target}"
end  