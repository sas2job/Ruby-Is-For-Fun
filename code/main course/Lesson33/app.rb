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

    # calculate total number of items in cart 
    total = 0

    hh.each do |key, value|
        total=total + value
    end

    # puts total variable
    puts "Total items in cart: #{total}"

    puts "=" * 50
end