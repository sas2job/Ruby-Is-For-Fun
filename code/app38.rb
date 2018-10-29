def convert_password(password)
  "*" * password.length
end

puts "Введте ваш пароль: "
user_password = STDIN.gets
puts "Спасибо ваш пароль защищен #{convert_password(user_password)}"