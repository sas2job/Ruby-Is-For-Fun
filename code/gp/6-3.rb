# encoding: utf-8

models = [
"Alfa Romeo",
"Alpina",
"Alpine",
"Aston Martin",
"Audi",
"Austin",
"Beijing",
"Bentley",
"BMW",
"Brilliance",
"Bugatti",
"Buick",
"BYD",
"Volkswagen",
"Volvo",
"Vortex",
"Wartburg",
"Westfield",
"Wiesmann",
"Wuling",
"Daewoo",
"Daihatsu",
"Daimler",
"Dallas",
"Derways",
"Jeep",
"Jiangling",
"Jiangnan",
"Infiniti",
"Innocenti",
"Invicta",
"Cadillac",
"Callaway",
"Carbodies",
"Caterham",
"Citroen",
"Lamborghini",
"Lancia",
"Lexus",
"Lifan",
"Lincoln",
"Lotus",
"LTI",
"Maserati",
"Maybach",
"Mazda",
"McLaren",
"Mitsubishi",
"Nissan",
"Opel",
"Peugeot",
"Plymouth",
"Pontiac",
"Porsche",
"Reliant",
"Renault",
"Saab",
"Saleen",
"Samsung",
"Saturn",
"Scion",
"SEAT",
"Skoda",
"SMA",
"Smart",
"Soueast",
"Spectre",
"SsangYong",
"Subaru",
"Suzuki",
"Toyota",
"Fiat",
"Ford",
"Hafei",
"Haima",
"Hindustan",
"Holden",
"Honda",
"HuangHai",
"Hummer",
"Hyundai",
"Chery",
"Chevrolet",
"Chrysler",
"Shifeng",
"JAC",
"Jaguar"]

print "У нас всего " + models.size.to_s +  " машин. Вам какую? " 

choice = gets.strip.to_i

puts choice.to_s

if choice == '' || choice == 0
  puts "Вы ничего не ввели, попробуйте еще раз"
  exit
end

choice = choice - 1

if (choice >=0  && choice < models.size)
  puts "Поздравляем, вы получили: " + models[choice].to_s
else 
  puts "Извините, машины с таким номером у нас нет :("
end

