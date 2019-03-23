hh = {}

loop do
    print "Enter product id: "
    id = gets.strip

    print "Enter amount (How much items you want to order): "
    n = gets.strip.to_i
    
    x = hh[id].to_i
    x = x + n

    hh[id] = x

    puts hh.inspect
    puts "=" * 50
end