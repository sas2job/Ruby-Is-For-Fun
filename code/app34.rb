puts("Is it raining? (y/n)")
x = gets.chomp.downcase
x == 'y' ? print('stay_home') : print('go_party')
